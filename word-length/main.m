//
//  main.m
//  word-length
//
//  Created by Lauren Janicki on 4/18/18.
//  Copyright © 2018 Lauren Janicki. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    if (argc == 1)
    {
        NSLog(@"You need to provide a file name");
        return 1;
    }
    
    FILE *wordFile = fopen(argv[1], "r");
    char word[100];
    
    while (fgets(word, 100, wordFile))
    {
        word[strlen(word) -1] = '\0';
        NSLog(@"%s is %lu characters long", word, strlen(word));
    }
    
    fclose(wordFile);
    return (0);
}
