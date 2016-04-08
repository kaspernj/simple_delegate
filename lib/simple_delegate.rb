module SimpleDelegate
  def self.included(base)
    base.extend(SimpleDelegate::ClassMethods)
  end

  module ClassMethods
    def delegate(*args)
      opts = args.pop

      args.each do |method|
        define_method(method) do |*method_args, &method_blk|
          object = instance_variable_get("@#{opts.fetch(:to)}")
          raise "No object by that name: #{opts.fetch(:to)}" unless object
          object.__send__(method, *method_args, &method_blk)
        end
      end
    end
  end
end
