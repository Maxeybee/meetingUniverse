import argparse
import os 
parser = argparse.ArgumentParser()
parser.add_argument("-start", help="Start server")
parser.add_argument("-stop", help="Stop server")

args = parser.parse_args()
if args.start:
    os.system("node serveurWeb.js")
