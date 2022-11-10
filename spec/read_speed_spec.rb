require "read_speed"

RSpec.describe "read_speed" do

  it "return 0 seconds for an empty string" do 
    result = read_speed("")
    expect(result).to eq "0 hours, 0 minutes, 0 seconds"
  end 

  it "return 1 minute for a string of exactly 200 words" do 
    result = read_speed("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales 
      nec dolor nec tincidunt. Quisque tristique tempus feugiat. Nullam laoreet nunc arcu, vitae
      porttitor nunc volutpat eget. Donec sollicitudin euismod leo. Quisque laoreet quam interdum
      convallis rutrum. Sed accumsan ante eget orci semper tempus. Suspendisse pharetra commodo congue.
      Integer bibendum sed enim quis blandit. Morbi vestibulum velit ac massa ultrices sagittis. 
      Sed sit amet imperdiet lectus, non gravida libero. Maecenas porta nunc eu dolor volutpat sollicitudin.
      Duis ornare sem ac orci facilisis rhoncus. Ut lobortis tristique dolor dapibus porta. Aenean at consequat
      sem, id fermentum tortor. Mauris nisl libero, pellentesque.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales 
      nec dolor nec tincidunt. Quisque tristique tempus feugiat. Nullam laoreet nunc arcu, vitae
      porttitor nunc volutpat eget. Donec sollicitudin euismod leo. Quisque laoreet quam interdum
      convallis rutrum. Sed accumsan ante eget orci semper tempus. Suspendisse pharetra commodo congue.
      Integer bibendum sed enim quis blandit. Morbi vestibulum velit ac massa ultrices sagittis. 
      Sed sit amet imperdiet lectus, non gravida libero. Maecenas porta nunc eu dolor volutpat sollicitudin.
      Duis ornare sem ac orci facilisis rhoncus. Ut lobortis tristique dolor dapibus porta. Aenean at consequat
      sem, id fermentum tortor. Mauris nisl libero, pellentesque. Lorem")
    expect(result).to eq "0 hours, 1 minutes, 0 seconds"
  end 


  it "a 100 word string takes 30 seconds to read" do 
    result = read_speed("
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales 
      nec dolor nec tincidunt. Quisque tristique tempus feugiat. Nullam laoreet nunc arcu, vitae
      porttitor nunc volutpat eget. Donec sollicitudin euismod leo. Quisque laoreet quam interdum
      convallis rutrum. Sed accumsan ante eget orci semper tempus. Suspendisse pharetra commodo congue.
      Integer bibendum sed enim quis blandit. Morbi vestibulum velit ac massa ultrices sagittis. 
      Sed sit amet imperdiet lectus, non gravida libero. Maecenas porta nunc eu dolor volutpat sollicitudin.
      Duis ornare sem ac orci facilisis rhoncus. Ut lobortis tristique dolor dapibus porta. Aenean at consequat
      sem, id fermentum tortor. Mauris nisl libero, pellentesque.")
    expect(result).to eq "0 hours, 0 minutes, 30 seconds"
  end 

  it "a 300 word string takes 1 minute 30 seconds to read" do 
    result = read_speed("
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales 
      nec dolor nec tincidunt. Quisque tristique tempus feugiat. Nullam laoreet nunc arcu, vitae
      porttitor nunc volutpat eget. Donec sollicitudin euismod leo. Quisque laoreet quam interdum
      convallis rutrum. Sed accumsan ante eget orci semper tempus. Suspendisse pharetra commodo congue.
      Integer bibendum sed enim quis blandit. Morbi vestibulum velit ac massa ultrices sagittis. 
      Sed sit amet imperdiet lectus, non gravida libero. Maecenas porta nunc eu dolor volutpat sollicitudin.
      Duis ornare sem ac orci facilisis rhoncus. Ut lobortis tristique dolor dapibus porta. Aenean at consequat
      sem, id fermentum tortor. Mauris nisl libero, pellentesque.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales 
      nec dolor nec tincidunt. Quisque tristique tempus feugiat. Nullam laoreet nunc arcu, vitae
      porttitor nunc volutpat eget. Donec sollicitudin euismod leo. Quisque laoreet quam interdum
      convallis rutrum. Sed accumsan ante eget orci semper tempus. Suspendisse pharetra commodo congue.
      Integer bibendum sed enim quis blandit. Morbi vestibulum velit ac massa ultrices sagittis. 
      Sed sit amet imperdiet lectus, non gravida libero. Maecenas porta nunc eu dolor volutpat sollicitudin.
      Duis ornare sem ac orci facilisis rhoncus. Ut lobortis tristique dolor dapibus porta. Aenean at consequat
      sem, id fermentum tortor. Mauris nisl libero, pellentesque.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales lorem ipsum")
    expect(result).to eq "0 hours, 1 minutes, 30 seconds"
  end 

  it "a 12000 word string takes 1 hour" do 
    result = read_speed("one " * 12000 )
    expect(result).to eq "1 hours, 0 minutes, 0 seconds"
  end 

  it "test for a string that displays non-zero hours and minutes and seconds " do 
    result = read_speed("one " * 12300 )
    expect(result).to eq "1 hours, 1 minutes, 30 seconds"
  end 

  it "test for a string that displays no-zero hours and seconds, but zero minutes " do 
    result = read_speed("one " * 12100 )
    expect(result).to eq "1 hours, 0 minutes, 30 seconds"
  end 

end 