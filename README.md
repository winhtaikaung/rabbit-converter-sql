# Rabbit-SQL

![Logo](https://avatars3.githubusercontent.com/u/11961573?v=3&s=100)


**Un Official another Zawgyi <=> Unicode Converter for Database**

## Installation

❗❗❗ Please make sure to ask your database admin or System admin to do the following installation ❗❗❗ 

Run the scripts to your respective database SQL console that will create 2 database functions `rabbit_uni_2_zawgyi` & `rabbit_zawgyi_2_uni` 

## Usage

```SQL

SELECT rabbit_zawgyi_2_uni('သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝဍ္ဎနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘးဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။');

SELECT rabbit_uni_2_zawgyi('သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ်ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေးဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။');

```

## Supported Databases

- Mysql    : 8.0 and above
- MariaDB  : 10.0 and above
- Postgres : 9.7 and above

## TODO 

- Support more databases 
- Oracle 
- MSSQL
- And many popular databases 

## Contributing

1. Fork it ( https://github.com/winhtaikaung/rabbit-converter-sql )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT
