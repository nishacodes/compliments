class Color
  attr_accessor :bgcolor

  def initialize
    @bgcolor = ["#4991E3",
                "#E874DE", 
                "#E86464",
                "#E864A2", 
                "#CB64E8", 
                "#9064E8", 
                "#647CE8",
                "#64B1E8", 
                "#75D1C2", 
                "#75D181", 
                "#D1D94E", 
                "#EDC651", 
                "#ED9A51", 
                "#ED6B51", 
                "#E87676", 
                "#ABABAB", 
                "#000" ].sample
  end

end