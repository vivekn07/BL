// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract EnumDemo {
    // Enum to represent the days of the week
    enum WeekDays {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    // State variables to store the current day and a chosen day
    WeekDays public week;
    WeekDays public choice;
    // Constant to store the default value
    WeekDays public constant default_value = WeekDays.Sunday;

    // Function to set the choice to Tuesday
    function setValue() public {
        choice = WeekDays.Tuesday;
    }

    // Function to get the current choice
    function getChoice() public view returns (WeekDays) {
        return choice;
    }

    // Function to get the default value
    function getDefaultValue() public pure returns (WeekDays) {
        return WeekDays.Sunday;
    }
}
