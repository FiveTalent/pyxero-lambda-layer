# PyXero Lambda Layer

This project creates a lambda layer with the pyxero sdk for use with Python3.6 lambda functions.

## Usage

Clone this repo, run the build command, then deploy the layer.

### Requirements

- Docker
- Serverless Framework


## Example

```bash
git clone git@github.com:FiveTalent/pyxero-lambda-layer.git
cd pyxero-lambda-layer

./build.sh

serverless deploy [options]
```

## Authors

- **Jeff Finley** - *Initial work* - [FiveTalent](https://fivetalent.com)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

- Thanks to the pyxero sdk for being a thing: [](https://github.com/freakboy3742/pyxero)
- Build steps inspired by the sqlite lambda layer project [](https://github.com/dschep/sqlite-lambda-layer)

Made with ❤️ by Five Talent.
