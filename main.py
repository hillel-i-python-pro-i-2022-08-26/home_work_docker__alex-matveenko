from faker import Faker

fake = Faker()


def hello():
    name = fake.name()
    print("Hello,", name)


if __name__ == "__main__":
    hello()
