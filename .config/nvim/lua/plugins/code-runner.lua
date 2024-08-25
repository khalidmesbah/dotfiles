return {
  {
    'CRAG666/code_runner.nvim',
    config = true,
    opts = {
      filetype = {
        typescript = {
          'cd $dir &&',
          -- 'tsc $fileName && node $fileNameWithoutExt.js',
          -- 'ts-node $fileName',
          'bun $fileName',
        },
        c = {
          'cd $dir &&',
          'betty $fileName &&',
          'gcc -Wall -Werror -Wextra -pedantic -std=gnu89 $fileName && ./a.out',
        },
        cpp = {
          'cd $dir &&',
          'g++ $fileName &&',
          'test ! -f ./test_runner.sh || test ! -f ./test_cases.txt || [ ! -s test_cases.txt ] && ./a.out ||',
          './test_runner.sh test_cases.txt a.out',
        },
      },
    },
  },
}
