use std::io::Read;

fn main() {
    let mut input = String::new();
    std::io::stdin().read_to_string(&mut input).unwrap();

    match json_rust::parse(&input) {
        Ok(value) => println!("{:#?}", value),
        Err(error) => {
            eprintln!("{:#?}", error);
            std::process::exit(1);
        }
    }
}
