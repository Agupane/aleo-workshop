// The 'helloworld' program.
program helloworld.aleo {
    transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        return c;
    }

    record UserData{
        name: field,
        age: u32,
        can_drink: bool,
    }

    mapping bool => u32 num_users;

    mapping address -> bool users_with_good_credits;

    transition can_user_drink(UserData userData) -> bool {
        return userData.age >= 21;
    }

    finalize can_user_get_loan(address user, bool hasGoodCredit) -> bool {
        users_with_good_credits[addres] = hasGoodCredit;
    }
}
