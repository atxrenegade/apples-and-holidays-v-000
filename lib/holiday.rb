require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies_hash)
  holiday_supplies_hash[:summer][:fourth_of_july][1]
end 

def add_supply_to_winter_holidays(holiday_supplies_hash, new_item)
  holiday_supplies_hash[:winter].each do |holiday_hash, supply_array|
        supply_array << new_item
  end 
  holiday_supplies_hash
end  

    
def all_winter_holiday_supplies(holiday_supplies_hash)
  winter_supplies = []
  holiday_supplies_hash[:winter].each do |holidays, supplies_array|
    supplies_array.each do |item|
      winter_supplies << item
    end  
  end
  winter_supplies
end

def add_supply_to_memorial_day(holiday_supplies_hash, item)
  holiday_supplies_hash[:spring][:memorial_day] << item
  holiday_supplies_hash
end

def add_new_holiday_with_supplies(holiday_supplies_hash, season, holiday, supplies)
  holiday_supplies_hash[season][holiday] = supplies 
  holiday_supplies_hash
end 

    
    
def all_supplies_in_holidays(holiday_supplies_hash)
  holiday_supplies_hash.each do |season, holiday| 
    puts "#{season.to_s.capitalize}:"
    supply_string = ""
    holiday.each do |holiday, supply_array|
      #supply_string = ""
      holiday = holiday.to_s
      if holiday.include?("_")
        holiday = holiday.split("_")
        holiday.map {|holiday_word| holiday_word.capitalize!} 
        supply_string << "  #{holiday.join(" ")}: " 
      else
        supply_string << "  #{holiday.capitalize}: "
      end 
      supply_array.each do |supply|
     
        if supply_array.last 
        
          supply_string << supply
        else
          supply_string << "#{supply}, "
        end  
      puts supply_string
      end
      #puts supply_string
    end 
  end  
end


def all_holidays_with_bbq(holiday_supplies_hash)
  has_BBQ = []
  holiday_supplies_hash.each do |season, holiday|
    holiday.each do |k, v| #k = holiday v= supply
        if v.include? "BBQ"
          has_BBQ << k
        end  
    end
  end 
  has_BBQ
end 

 
  

