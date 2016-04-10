/* lru_page_replacement.c */
/* Date  : 14 April 2016
 * Author: Ankit Pati
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

double lru(size_t n_frame, size_t *pages, size_t n_page)
{
    size_t p, f, l, lru, hit, frames[20];

    for(f = 0; f < n_frame; ++f) frames[f] = 0; /* 0 is protected page */

    puts("Page Replacement Algorithm");
    puts("Least Recently Used (LRU)");

#define LINE() \
    { \
        size_t f; \
        putchar('\n'); \
        putchar('+'); \
        printf("---------+"); \
        for(f = 0; f < n_frame; ++f) printf("----------+"); \
        putchar('\n'); \
    }

    hit = 0;

    LINE();

    printf("| Request |");
    for(f = 1; f <= n_frame; ++f) printf(" Frame %2zu |", f);

    for(p = 0; p < n_page; ++p){
        LINE();

        if(!pages[p]){
            fprintf(stderr, "lru: Segmentation Fault! Page zero requested.\n");
            return NAN;
        }

        printf("| Page %2zu |", pages[p]);

        for(f = 0; f < n_frame && frames[f] != pages[p] && frames[f]; ++f);
        if(f != n_frame){
            if(frames[f] == pages[p]) ++hit;
            goto print_frames;
        }

        for(f = 0, lru = p - 1; f < n_frame; ++f){
            for(l = p - 1; pages[l] != frames[f]; --l);
            if(l < lru) lru = l;
        }

        for(f = 0; f < n_frame; ++f)
            if(frames[f] == pages[lru])
                break;

    print_frames:
        frames[f] = pages[p];
        for(f = 0; f < n_frame; ++f)
            frames[f] ? printf(" %8zu |", frames[f]) : printf(" %8c |", ' ');
    }

    LINE();

    printf("Cache Hits = %zu\nHit Ratio  = %.2lf%%\n",
                                                    hit, 100.0 * hit / n_page);

    return 100.0 * hit / n_page;
#undef LINE
}

int main()
{
    size_t i, n_frame, pages[20], n_page;

    puts("Number of frames?");
    scanf(" %zu%*c", &n_frame);
    if(n_frame > 20) n_frame = 20;
    putchar('\n');

    puts("Number of pages?");
    scanf(" %zu%*c", &n_page);
    if(n_page > 20) n_page = 20;
    putchar('\n');

    printf("%zu pages?\n", n_page);
    for(i = 0; i < n_page; ++i) scanf(" %zu%*c", pages + i);
    putchar('\n');

    lru(n_frame, pages, n_page);
    return 0;
}
/* end of lru_page_replacement.c */

/* OUTPUT

Number of frames?
3

Number of pages?
12

12 pages?
2 3 2 1 5 1 4 5 3 2 5 2

Page Replacement Algorithm
Least Recently Used (LRU)

+---------+----------+----------+----------+
| Request | Frame  1 | Frame  2 | Frame  3 |
+---------+----------+----------+----------+
| Page  2 |        2 |          |          |
+---------+----------+----------+----------+
| Page  3 |        2 |        3 |          |
+---------+----------+----------+----------+
| Page  2 |        2 |        3 |          |
+---------+----------+----------+----------+
| Page  1 |        2 |        3 |        1 |
+---------+----------+----------+----------+
| Page  5 |        2 |        5 |        1 |
+---------+----------+----------+----------+
| Page  1 |        2 |        5 |        1 |
+---------+----------+----------+----------+
| Page  4 |        4 |        5 |        1 |
+---------+----------+----------+----------+
| Page  5 |        4 |        5 |        1 |
+---------+----------+----------+----------+
| Page  3 |        4 |        5 |        3 |
+---------+----------+----------+----------+
| Page  2 |        2 |        5 |        3 |
+---------+----------+----------+----------+
| Page  5 |        2 |        5 |        3 |
+---------+----------+----------+----------+
| Page  2 |        2 |        5 |        3 |
+---------+----------+----------+----------+
Cache Hits = 5
Hit Ratio  = 41.67%

*/
