@inventory_list = [
    {item: "Cereal", price: 5 it},
    {item: "Milk", price: 3},
    {item: "Fruit Snacks", price: 4},
    {item: "12 Pack Soda", price: 6},
]

@menu = [
    "Buy something"
    "Display inventory"
    "Check remaining balance"
]

def menu(number)
    case number
    when 1
        buy_something
    when 2
        print_list
        puts "Here are the itmes in stock"
        print_list
    when 3
        check_balance
    else
        puts "Come shop with us again soon!"
        exit
    end
end

def welcome
    puts "Welcome to your local grocier."
    puts "What is your budger for today?"
    budget = gets.chomp
    show_menu
end

def show_menu
    puts "What can we do for you today?"
        @menu.each_with_index { |single, index|
    puts "#{index+1} #{single}"
}
answer = gets.chomp.to_i
menu(answer)
end

def buy_something
end


def print_list
    @inventory_list.each_with_index do |item, index| 
        puts "#{index+1} ---> #{item[:item]}, #{item[:pice]}"
    end
end

def check_balance
end

