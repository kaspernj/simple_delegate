module SimpleDelegate
  def self.included(base)
    base.extend(SimpleDelegate::ClassMethods)
  end

  module ClassMethods
    def delegate(*args)
      opts = args.pop

      args.each do |method|
        define_method(method) do |*method_args, &method_blk|
          if opts[:to_instance_variable]
            object = instance_variable_get("@#{opts.fetch(:to_instance_variable)}")
            raise "Nothing was returned by: #{opts.fetch(:to_instance_variable)}" unless object
          elsif opts[:to]
            object = __send__(opts.fetch(:to))
            raise "Nothing was returned by: #{opts.fetch(:to)}" unless object
          else
            raise "Don't know where to delegate to"
          end

          object.__send__(method, *method_args, &method_blk)
        end
      end
    end
  end
end
