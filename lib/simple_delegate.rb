module SimpleDelegate
  def self.included(base)
    base.extend(SimpleDelegate::ClassMethods)
  end

  module ClassMethods
    def delegate(*args)
      opts = args.pop

      args.each do |method|
        define_method(method) do |*method_args, &method_blk|
          if opts[:to]
            object = instance_variable_get("@#{opts.fetch(:to)}")
          elsif opts[:to_method]
            object = __send__(opts.fetch(:to_method))
          else
            raise "Don't know where to delegate to"
          end

          raise "Nothing was returned by: #{opts.fetch(:to_method)}" unless object
          object.__send__(method, *method_args, &method_blk)
        end
      end
    end
  end
end
