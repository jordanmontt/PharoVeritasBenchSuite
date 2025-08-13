from sklearn.datasets import make_regression
import os
import pandas
import numpy


while True:
    base_path = input("Enter the path where you want to write the generated dataset: ")
    if os.path.isdir(base_path):
        print()
        break 
    else:
        print(f"The path '{base_path}' is not a valid directory. Please try again.")

def generate_dataset(number_rows, number_columns):
    x, y = make_regression(n_samples=number_rows, n_features=number_columns, random_state=0, noise=10)
    return list([(numpy.append(ex, ey)) for ex, ey in zip(x, y)])


def write_dataset_to_disk(dataset, dataset_name):
    df = pandas.DataFrame(dataset)
    path = base_path + dataset_name
    df.to_csv(path_or_buf=path, index=False, header=False)


def run_dataset_generation(n_rows, n_columns, file_name):
    print('Starting dataset generation (', n_rows, ' rows x ', n_columns, ' columns )')
    dataset = generate_dataset(n_rows, n_columns)
    print('Generated dataset successfully (', n_rows, ' rows x ', n_columns, ' columns )')
    write_dataset_to_disk(dataset, file_name)
    print('Written dataset to disk successfully (', n_rows, ' rows x ', n_columns, ' columns )', 'generation')
    print()


run_dataset_generation(20000, 5, 'tiny_dataset.csv')
run_dataset_generation(200000, 5, 'tiny_ten_times_larger_dataset.csv')
run_dataset_generation(500000, 5, 'tiny_twenty_times_larger_dataset.csv')
run_dataset_generation(1000000, 5, 'tiny_fifty_times_larger_dataset.csv')
run_dataset_generation(2000000, 5, 'tiny_one_hundred_times_larger_dataset.csv')
run_dataset_generation(4000000, 5, 'tiny_two_hundred_times_larger_dataset.csv')
run_dataset_generation(5000000, 5, 'tiny_two_hundred_fifty_times_larger_dataset.csv')
run_dataset_generation(10000000, 5, 'tiny_five_hundred_times_larger_dataset.csv')
run_dataset_generation(20000000, 5, 'tiny_one_thousand_times_larger_dataset.csv')