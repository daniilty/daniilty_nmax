require "daniilty_nmax/version"

module DaniiltyNmax
  class Error < StandardError; end
    def NMAX.quick_sort(array)
      if array.length > 1
        pivot = array.pop
        left, right = [], []
        for value in array
          value >= pivot ? left.push(value) : right.push(value)
        end

        array = quick_sort(left) + [pivot] + quick_sort(right)
      end

      array
    end
    def NMAX.get_count
      ARGV[0] ? ARGV[0].to_i : 4
    end
    def NMAX.read_and_sort(ins)
      nums = self.quick_sort(ins.read.split(" ").map(&:to_i))
      puts nums.first(self.get_count)
    end
end
