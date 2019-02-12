import re

# patterns = ['term1', 'term2']
#
# text = "This is a string with term1, not not the other!"
#
# for pattern in patterns:
#     print("I'm searching for: " + pattern)
#
#     if re.search(pattern, text):
#         print("MATCH!")
#     else:
#         print("NO MATCH!")

# a=re.findall('match', 'test phrase match in middle')
# print(a)

def multi_re_find(patterns, phrase):
    for pat in patterns:
        print("Searching for pattern {}".format(pat))
        print(re.findall(pat, phrase))
        print('\n')

test_phrase = 'This is a string! But it has punctuation. How can we remove it?'

test_pattern=['[A-Z]+']

multi_re_find(test_pattern, test_phrase)
