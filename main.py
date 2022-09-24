from faker import Faker

fake = Faker()


def hello():
    name = fake.name()
    print("Helo,", name)


hello()
