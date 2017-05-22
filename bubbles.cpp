#include<stdio.h>
#include <GLUT/glut.h>
#include<stdio.h>
#include<string.h>
#include<math.h>
#include<stdlib.h>

int motion_var = 0;
int hights_of_grass[1000];
int hight_stored = 0;
int bubble_called = 0;
int bubble_motion_var = 0;
//
int list_of_randoms[2000] = {436, 727, 4, 102, 683, 18, 675, 412, 310, 359, 191, 359, 346, 110, 248, 706, 562, 528, 740, 990, 20, 8, 417, 653, 371, 85, 26, 909, 188, 41, 16, 63, 323, 714, 912, 262, 983, 839, 643, 563, 302, 619, 244, 876, 455, 244, 315, 66, 855, 109, 137, 80, 71, 36, 750, 183, 518, 397, 697, 327, 251, 91, 122, 865, 913, 968, 205, 734, 241, 222, 116, 810, 292, 724, 962, 756, 54, 292, 504, 742, 630, 160, 138, 401, 386, 437, 243, 845, 783, 217, 672, 943, 495, 942, 497, 50, 253, 275,121,728, 947, 937, 587, 302, 36, 646, 395, 672, 908, 904, 911, 832, 522, 825, 420, 137, 184, 970, 36, 419, 320, 84, 977, 779, 17, 200, 669, 540, 810, 181, 491, 353, 342, 628, 530, 367, 210, 7, 400, 336, 757, 414, 742, 483, 106, 988, 316, 849, 775, 203, 140, 136, 221, 159, 985, 501, 829, 460, 777, 234, 848, 871, 230, 645, 177, 127, 776, 16, 965, 958, 95, 562, 477, 965, 414, 985, 964, 861, 148, 692, 902, 648, 540, 203, 250, 746, 202, 907, 12, 39, 699, 819, 204, 893, 267, 466, 185, 473, 148,827, 244, 976, 892, 430, 416, 97, 823, 369, 902, 49, 711, 419, 73, 431, 897, 243, 603, 756, 7, 584, 798, 847, 693, 888, 536, 194, 151, 875, 153, 492, 944, 455, 264, 252, 346, 373, 412, 95, 276, 820, 370, 984, 590, 498, 239, 95, 582, 539, 81, 40, 33, 811, 275, 106, 829, 759, 568, 872, 908, 757, 51, 164, 514, 732, 525, 691, 64, 199, 717, 285, 869, 964, 229, 759, 754, 336, 7, 188, 916, 796, 316, 380, 590, 410, 856, 656, 592, 638, 704, 851, 408, 487, 952, 954, 428, 999, 928, 54, 602, 689, 18,535, 909, 794, 51, 846, 857, 807, 27, 264, 792, 113, 10, 305, 19, 259, 99, 988, 352, 945, 672, 98, 948, 301, 187, 286, 937, 77, 228, 632, 897, 661, 689, 483, 959, 27, 295, 886, 56, 140, 445, 739, 650, 215, 611, 560, 161, 569, 250, 903, 997, 158, 971, 214, 717, 568, 426, 520, 107, 277, 853, 918, 330, 964, 1, 575, 791, 855, 637, 5, 655, 544, 108, 673, 671, 117, 887, 14, 629, 664, 112, 648, 63, 761, 474, 687, 69, 924, 628, 762, 38, 88, 975, 336, 305, 952, 983, 631, 921, 498, 565, 174, 33, 955,18, 596, 580, 751, 800, 786, 932, 527, 797, 780, 130, 961, 704, 552, 875, 613, 400, 496, 493, 886, 77, 68, 468, 896, 717, 259, 219, 67, 327, 908, 792, 12, 418, 497, 378, 656, 407, 439, 927, 879, 482, 961, 104, 429, 192, 58, 215, 300, 590, 683, 316, 163, 452, 375, 10, 548, 958, 325, 635, 201, 697, 37, 638, 284, 413, 284, 102, 737, 543, 510, 795, 572, 350, 74, 596, 483, 390, 49, 68, 51, 114, 784, 858, 810, 378, 361, 194, 162, 197, 566, 938, 325, 852, 343, 280, 204, 161, 992, 505, 884, 877,752, 190, 872, 522, 70, 812, 759, 301, 710, 492, 960, 105, 253, 239, 989, 552, 511, 932, 133, 204, 530, 253, 134, 332, 102, 878, 600, 63, 312, 460, 627, 672, 240, 62, 424, 742, 994, 863, 511, 830, 780, 185, 421, 395, 86, 225, 828, 2, 911, 125, 138, 361, 151, 790, 49, 565, 385, 643, 820, 740, 448, 856, 555, 751, 119, 727, 649, 415, 620, 154, 440, 136, 117, 0, 520, 571, 409, 986, 832, 917, 137, 470, 837, 377, 452, 591, 781, 903, 943, 436, 513, 440, 246, 131, 551, 664, 717, 500, 413, 798, 892, 168, 84, 40, 156, 891, 846, 831, 583, 238, 150, 396, 527, 819, 592, 894, 558, 724, 321, 429, 598, 870, 859, 696, 692, 756, 585, 466, 634, 349, 365, 133, 100, 956, 179, 739, 252, 583, 532, 281, 897, 825, 478, 321, 532, 589, 63, 902, 236, 928, 377, 695, 655, 730, 589, 50, 259, 21, 588, 98, 216, 597, 652, 473, 391, 776, 134, 903, 243, 98, 730, 918, 486, 664, 109, 296, 720, 802, 996, 187, 139, 60, 74, 733, 10, 294, 964, 488, 801, 68, 333, 951, 969, 49, 326, 43, 586, 752, 83, 402, 60, 428, 416, 704, 705, 704, 847, 356, 368, 762, 44, 540, 788, 231, 541, 9, 38, 566, 102, 976, 139, 779, 670, 129, 832, 920, 67, 565, 394, 539, 263, 668, 171, 670, 922, 307, 910, 278, 406, 443, 177, 552, 740, 789, 442, 608, 804, 287, 23, 208, 404, 52, 573, 661, 109, 963, 204, 222, 698, 565, 703, 263, 537, 742, 716, 236, 210, 85, 923, 466, 648, 987, 674, 695, 960, 900, 925, 644, 627, 468, 692, 864, 685, 36, 297, 716, 606, 500, 871, 66, 262, 336, 781, 446, 76, 77, 469, 399, 832, 90, 823, 106, 709, 241, 939, 122, 832, 370, 549, 468, 790, 684, 345, 103, 132, 439, 496, 524, 266, 377, 437, 330, 178, 929, 750, 845, 331, 333, 421, 490, 366, 950, 915, 912, 197, 990, 851, 548, 515, 247, 101, 252, 903, 628, 54, 180, 852, 189, 18, 566, 3, 974, 46, 474, 961, 344, 916, 867, 495, 259, 839, 584, 843, 202, 648, 124, 424, 987, 947, 268, 679, 676, 314, 358, 497, 782, 239, 900, 12, 662, 345, 180, 67, 200, 627, 221, 511, 534, 269, 631, 1, 988, 23, 922, 595, 741, 259, 137, 258, 106, 132, 77, 321, 934, 364, 556, 882, 434, 779, 620, 206, 548, 803, 404, 443, 872, 830, 703, 184, 943, 972, 531, 224, 849, 121, 831, 236, 678, 864, 149, 365, 77, 326, 428, 977, 993, 635, 117, 946, 702, 927, 389, 407, 720, 397, 130, 50, 385, 123, 644, 379, 602, 278, 844, 466, 167, 430, 164, 943, 24, 554, 364, 651, 557, 358, 867, 663, 135, 297, 344, 304, 703, 601, 532, 441, 836, 375, 788, 302, 907, 672, 656, 731, 233, 901, 796, 927, 181, 69, 495, 471, 611, 49, 854, 407
};


int list_of_random_colors[] = {
  160, 26, 134, 232, 24, 10, 4, 95, 21, 251, 32, 91, 75, 27, 58, 44, 146, 182, 144, 81, 108, 214, 47, 42, 213, 199, 90, 50, 41, 84, 238, 206, 229, 130, 45, 81, 93, 238, 63, 136, 24, 195, 70, 74, 204, 143, 28, 71, 14, 115, 146, 80, 198, 40, 246, 248, 70, 63, 178, 16, 132, 209, 87, 254, 211, 90, 88, 160, 212, 5, 178, 249, 38, 25, 161, 50, 208, 51, 179, 98, 122, 115, 100, 183, 105, 224, 176, 108, 6, 58, 192, 20, 182, 151, 39, 237, 222, 22, 188, 186, 181, 209, 205, 215, 177, 58, 143, 224, 129, 23, 52, 229, 210, 252, 30, 85, 27, 233, 252, 90, 238, 204, 46, 151, 140, 88, 64, 33, 208, 57, 10, 130, 232, 127, 129, 191, 174, 84, 43, 168, 178, 62, 41, 42, 119, 108, 84, 90, 30, 104, 181, 117, 254, 72, 167, 169, 36, 49, 4, 167, 74, 190, 126, 162, 252, 48, 16, 28, 190, 59, 233, 235, 172, 137, 7, 50, 64, 142, 186, 244, 225, 100, 175, 28, 58, 111, 134, 86, 35, 59, 88, 91, 156, 155, 159, 143, 32, 117, 0, 183, 69, 138, 48, 165, 211, 175, 57, 237, 244, 49, 71, 195, 102, 217, 110, 72, 205, 56, 223, 42, 90, 150, 166, 85, 50, 183, 98, 158, 170, 117, 207, 47, 87, 15, 246, 103, 240, 150, 40, 63, 10, 28, 109, 107, 130, 50, 130, 49, 52, 191, 241, 251, 179, 115, 178, 143, 59, 72, 228, 8, 79, 172, 80, 92, 205, 240, 215, 85, 21, 58, 208, 1, 147, 169, 168, 9, 163, 168, 143, 245, 104, 192, 183, 119, 153, 93, 140, 131, 50, 14, 11, 177, 232, 162, 236, 81, 211, 233, 70, 107, 133, 187, 90, 11, 130, 178, 180, 186, 109, 217, 121, 112, 204, 21, 226, 22, 175, 31, 236, 54, 253, 203, 244, 87, 206, 70, 81, 247, 99, 242, 250, 55, 44, 93, 157, 82, 133, 199, 138, 84, 150, 120, 216, 149, 151, 216, 243, 44, 28, 127, 22, 13, 191, 109, 53, 4, 199, 89, 22, 200, 159, 49, 159, 238, 27, 161, 121, 38, 149, 10, 164, 35, 21, 142, 5, 46, 180, 236, 2, 148, 93, 116, 155, 66, 196, 179, 0, 185, 130, 16, 149, 177, 81, 176, 156, 149, 106, 83, 91, 212, 237, 250, 109, 248, 20, 74, 88, 106, 110, 21, 71, 143, 28, 126, 217, 19, 225, 167, 96, 130, 53, 156, 242, 203, 41, 21, 229, 82, 144, 11, 197, 220, 79, 48, 189, 182, 32, 7, 183, 96, 247, 110, 91, 141, 136, 1, 193, 192, 114, 42, 176, 64, 52, 45, 204, 165, 204, 155, 25, 13, 254, 61, 26, 67, 183, 105, 37, 129, 47, 200, 123, 120, 67, 69, 85, 37, 146, 138, 43, 149, 151, 89, 171, 181, 88, 18, 159, 73, 20, 232, 168, 173, 109, 52, 193, 156, 186, 36, 16, 151, 153, 165, 183, 61, 200, 135, 61, 95, 176, 57, 178, 99, 8, 3, 180, 37, 26, 102, 22, 4, 188, 164, 211, 118, 252, 254, 141, 86, 95, 105, 3, 151, 180, 223, 171, 75, 155, 78, 246, 172, 64, 100, 4, 38, 4, 148, 58, 112, 89, 251, 73, 100, 185, 57, 39, 11, 142, 104, 148, 65, 155, 241, 55, 167, 124, 62, 131, 32, 107, 12, 70, 136, 208, 246, 202, 4, 151, 75, 94, 180, 10, 177, 36, 121, 56, 227, 46, 2, 145, 242, 122, 188, 199, 232, 234, 183, 124, 202, 116, 174, 54, 245, 143, 38, 225, 8, 55, 204, 219, 227, 10, 7, 10, 209, 152, 187, 100, 242, 44, 83, 219, 66, 41, 99, 126, 130, 194, 207, 26, 93, 0, 18, 105, 247, 84, 102, 208, 74, 80, 91, 153, 112, 52, 22, 126, 151, 161, 216, 172, 133, 24, 254, 44, 178, 83, 111, 148, 68, 17, 224, 70, 58, 43, 202, 86, 243, 143, 214, 216, 190, 248, 11, 51, 14, 242, 13, 65, 206, 6, 151, 156, 204, 21, 160, 184, 231, 92, 53, 249, 33, 205, 39, 178, 81, 243, 226, 20, 112, 179, 89, 221, 223, 148, 93, 237, 26, 67, 211, 116, 85, 250, 182, 89, 95, 109, 93, 228, 158, 178, 59, 184, 64, 180, 196, 154, 94, 105, 136, 146, 161, 54, 230, 39, 110, 101, 222, 196, 146, 179, 66, 150, 114, 144, 26, 81, 18, 217, 193, 28, 179, 210, 170, 97, 22, 81, 146, 81, 57, 61, 189, 155, 236, 22, 83, 7, 187, 121, 6, 177, 68, 247, 155, 108, 145, 142, 13, 237, 82, 253, 216, 109, 233, 165, 204, 147, 152, 57, 24, 150, 113, 134, 30, 211, 200, 19, 95, 17, 238, 161, 34, 221, 97, 121, 163, 16, 84, 232, 152, 71, 50, 181, 165, 216, 48, 187, 187, 200, 91, 99, 44, 43, 111, 195, 212, 73, 46, 96, 254, 184, 101, 61, 69, 24, 212, 222, 87, 13, 156, 221, 162, 46, 61, 161, 211, 15, 19, 7, 141, 253, 81, 82, 90, 67, 242, 89, 44, 24, 253, 7, 105, 123, 31, 225, 164, 43, 40, 217, 94, 195, 190, 79, 40, 14, 208, 240, 142, 175, 99, 174, 96, 108, 216, 57, 134, 91, 39, 235, 34, 197, 77, 62, 9, 195, 247, 22, 55, 54, 23, 154, 13, 155, 199, 104, 179, 62, 228, 73, 48, 228, 169, 247, 126, 69, 233, 41, 33, 247, 70, 202, 38, 155, 106, 21, 156, 190, 72, 48, 254, 239, 121, 158, 188, 137, 158, 62, 94, 86, 193, 89, 23, 88, 57, 68, 4, 109, 4, 95, 51, 59, 174, 49, 90, 178, 223, 189, 176, 124, 163, 147, 120, 9, 68, 211, 112, 68, 24, 56, 215, 227, 168, 91, 9, 38, 90, 145, 134, 135, 198, 114, 112, 59, 154, 241, 49, 53, 88, 119, 42, 140, 220, 154, 134, 186, 246, 85, 95, 244, 59, 173, 107, 179, 95, 191, 129, 123, 251, 55, 253, 64, 123, 210, 170, 46, 207, 199, 177, 117, 8, 84, 75, 167, 134, 251, 53, 86, 171, 39, 227, 129, 62, 114, 169, 11, 81, 51, 219, 222, 70, 194, 245, 159, 156, 16, 1, 201, 225, 158, 86, 133, 91, 251, 96, 178, 118, 91, 17, 120, 173, 183, 201, 201, 204, 85, 120, 132, 94, 131, 204, 239, 157, 208, 254, 187, 245, 135, 189, 243, 117, 81, 222, 214, 26, 146, 93, 186, 23, 86, 22, 246, 44, 178, 65, 145, 85, 140, 170, 189, 181, 189, 240, 23, 49, 189, 158, 90, 225, 95, 222, 97, 103, 75, 27, 68, 61, 208, 161, 8, 159, 102, 67, 81, 145, 164, 236, 248, 209, 185, 137, 31, 37, 109, 222, 4, 173, 134, 164, 135, 205, 118, 110, 157, 218, 190, 212, 195, 224, 112, 9, 208, 95, 38, 106, 242, 154, 250, 38, 25, 26, 0, 110, 214, 36, 88, 228, 179, 28, 201, 169, 162, 110, 49, 253, 1, 60, 73, 219, 127, 145, 140, 105, 178, 105, 159, 50, 49, 238, 104, 97, 160, 250, 246, 204, 50, 221, 203, 251, 164, 235, 65, 106, 254, 190, 149, 222, 128, 140, 152, 128, 94, 167, 43, 34, 15, 8, 35, 199, 145, 39, 108, 64, 91, 240, 216, 210, 125, 252, 168, 82, 31, 31, 158, 245, 38, 96, 121, 59, 101, 66, 90, 38, 44, 146, 77, 24, 120, 30, 169, 141, 169, 130, 135, 55, 166, 167, 190, 148, 63, 182, 57, 55, 198, 14, 217, 25, 206, 46, 2, 57, 40, 11, 60, 133, 131, 144, 223, 99, 64, 36, 251, 2, 107, 120, 52, 60, 120, 115, 89, 160, 156, 63, 189, 137, 80, 98, 161, 48, 30, 224, 213, 59, 67, 196, 83, 81, 138, 139, 43, 57, 249, 119, 60, 174, 160, 58, 215, 164, 72, 249, 235, 196, 203, 0, 214, 128, 101, 108, 107, 161, 223, 150, 74, 96, 176, 124, 61, 74, 179, 79, 224, 5, 123, 185, 243, 180, 238, 65, 76, 155, 65, 19, 251, 6, 236, 135, 117, 218, 151, 244, 245, 207, 85, 69, 131, 222, 179, 140, 188, 156, 1, 226, 9, 208, 133, 172, 11, 50, 59, 69, 45, 0, 157, 32, 175, 62, 12, 130, 138, 62, 27, 79, 182, 52, 21, 150, 40, 83, 118, 32, 153, 87, 194, 248, 159, 71, 229, 158, 193, 193, 51, 170, 107, 173, 252, 208, 114, 70, 33, 128, 80, 229, 42, 102, 134, 226, 214, 208, 192, 251, 54, 118, 234, 29, 172, 155, 153, 146, 249, 235, 165, 105, 158, 7, 25, 28, 223, 101, 83, 96, 225, 38, 77, 153, 1, 85, 25, 214, 25, 232, 119, 250, 210, 173, 152, 8, 187, 6, 185, 189, 243, 89, 29, 38, 175, 28, 20, 33, 141, 100, 151, 27, 66, 208, 178, 145, 229, 153, 131, 129, 127, 44, 7, 219, 208, 188, 127, 203, 157, 85, 100, 254, 5, 185, 128, 0, 219, 242, 158, 99, 163, 24, 217, 21, 238, 234, 240, 127, 82, 168, 106, 26, 224, 143, 137, 214, 22, 212, 180, 158, 43, 221, 94, 10, 37, 106, 206, 120, 128, 178, 123, 177, 232, 54, 248, 87, 133, 219, 96, 0, 91, 42, 114, 85, 21, 237, 153, 225, 136, 161, 112, 180, 101, 11, 89, 254, 238, 67, 139, 82, 188, 33, 1, 183, 33, 132, 104, 202, 114, 5, 227, 23, 77, 183, 106, 191, 213, 122, 171, 122, 158, 13, 132, 236, 95, 87, 191, 216, 108, 7, 181, 138, 97, 60, 49, 169, 87, 133, 17, 245, 199, 27, 73, 130, 61, 90, 171, 157, 129, 141, 102, 166, 181, 224, 185, 99, 248, 87, 87, 105, 33, 205, 217, 144, 77, 157, 122, 225, 46, 55, 38, 160, 129, 88, 64, 93, 83, 102, 49, 237, 7, 250, 63, 129, 134, 26, 213, 179, 14, 29, 83, 89, 22, 117, 7, 219, 106, 206, 44, 76, 189, 126, 159, 152, 142, 36, 74, 52, 0, 231, 143, 44, 2, 106, 89, 225, 168, 249, 235, 67, 53, 248, 76, 161, 223, 183, 10, 219, 104, 50, 71, 198, 203, 186, 51, 49, 203, 160, 194, 140, 89, 111, 4, 241, 69, 51, 86, 117, 176, 201, 194, 188, 237, 157, 235, 130, 90, 68, 207, 240, 133, 28, 67, 229, 221, 61, 205, 182, 89, 190, 87, 93, 19, 238, 79, 210, 9, 234, 210, 18, 161, 223, 87, 169, 127, 161, 210, 66, 178, 31, 165, 49, 78, 166, 81, 116, 19, 107, 0, 103, 212, 102, 30, 73, 73, 213, 68, 42, 221, 193, 119, 75, 17, 50, 25, 134, 143, 127, 6, 95, 205, 116, 161, 38, 35, 9, 67, 47, 251, 120, 179, 131, 27, 204, 136, 79, 228, 68, 116, 147, 88, 126, 77, 122, 167, 182, 131, 120, 88, 87, 163, 17, 58, 4, 141, 39, 188, 27, 190, 212, 92, 136, 116, 119, 27, 73, 28, 11, 184, 204, 211, 78, 100, 189, 191, 231, 190, 194, 202, 65, 150, 11, 166, 161, 241, 138, 117, 69, 125, 190, 61, 58, 158, 227, 25, 77, 191, 51, 156, 186, 122, 153, 246, 88, 51, 87, 183, 140, 35, 46, 235, 252, 148, 63, 115, 191, 180, 163, 135, 82, 121, 167, 176, 17, 104, 49, 236, 137, 121, 111, 118, 174, 178, 126, 134, 249, 197, 26, 153, 75, 219, 184, 38, 127, 231, 196, 135, 65, 133, 128, 216, 9, 225, 246, 198, 15, 153, 138, 38, 1, 19, 254, 63, 136, 50, 240, 192, 99, 188, 161, 252, 138, 58, 98, 195, 80, 180, 202, 225, 137, 143, 135, 7, 36, 231, 227, 162, 162, 3, 109, 95, 112, 27, 26, 242, 177, 38, 22, 34, 202, 4, 136, 9, 207, 29, 144, 28, 117, 93, 102, 240, 4, 15, 230, 190, 21, 40, 144, 213, 108, 157, 58, 214, 245, 69, 232, 6, 162, 52, 31, 185, 9, 2, 253, 210, 153, 119, 79, 188, 35, 172, 245, 161, 249, 52, 109, 63, 219, 138, 223, 145, 154, 189, 235, 134, 3, 157, 145, 220, 196, 194, 247, 216, 65, 235, 207, 109, 207, 174, 57, 190, 41, 107, 101, 163, 26, 152, 205, 82, 193, 190, 45, 115, 60, 7, 143, 203, 204, 160, 210, 227, 215, 151, 241, 203, 56, 117, 141, 30, 154, 181, 177, 144, 22, 206, 210, 124, 48, 127, 103, 123, 96, 93, 117, 223, 53, 106, 201, 123, 175, 225, 32, 165, 187, 90, 108, 18, 32, 239, 2, 182, 176, 86, 75, 157, 25, 166, 69, 140, 106, 174, 37, 114, 3, 42, 189, 96, 88, 96, 112, 188, 196, 241, 81, 141, 93, 13, 52, 18, 120, 217, 150, 115, 9, 178, 133, 52, 129, 86, 48, 241, 93, 101, 33, 175, 92, 13, 208, 238, 92, 253, 173, 10, 241, 50, 130, 246, 35, 12, 213, 6, 210, 38, 208, 238, 86, 21, 61, 203, 173, 248, 247, 61, 52, 31, 211, 83, 164, 41, 35, 220, 50, 142, 246, 127, 10, 67, 6, 129, 234, 158, 143, 88, 13, 192, 246, 52, 121, 245, 244, 189, 64, 76, 183, 76, 103, 72, 162, 48, 51, 98, 51, 213, 72, 152, 122, 146, 193, 225, 38, 87, 254, 114, 253, 222, 50, 44, 58, 252, 42, 88, 49, 240, 205, 51, 143, 155, 193, 70, 42, 1, 126, 53, 4, 172, 236, 53, 52, 224, 22, 130, 150, 163, 49, 191, 61, 74, 26, 214, 226, 112, 86, 89, 14, 188, 193, 42, 44, 184, 117, 230, 199, 195, 50, 99, 43, 102, 118, 237, 132, 215, 174, 171, 81, 233, 151, 142, 81, 50, 232, 88, 93, 157, 57, 194, 42, 122, 185, 237, 214, 158, 112, 29, 135, 9, 124, 77, 123, 5, 146, 184, 175, 55, 218, 150, 12, 186, 200, 61, 59, 202, 157, 95, 101, 101, 101, 138, 4, 223, 147, 3, 240, 69, 228, 106, 202, 47, 204, 212, 19, 177, 222, 146, 118, 112, 152, 170, 172, 8, 37, 95, 84, 229, 70, 80, 4, 78, 12, 176, 208, 215, 211, 155, 120, 34, 104, 77, 133, 84, 235, 148, 170, 39, 25, 54, 88, 93, 49, 134, 209, 57, 121, 45, 175, 166, 56, 221, 174, 199, 124, 6, 176, 130, 51, 179, 21, 149, 117, 113, 160, 146, 107, 72, 192, 101, 149, 122, 174, 208, 33, 96, 170, 18, 22, 129, 165, 112, 95, 24, 114, 101, 166, 193, 247, 67, 24, 122, 0, 200, 64, 195, 213, 198, 32, 108, 203, 18, 147, 73, 14, 59, 69, 54, 226, 128, 208, 234, 49, 9, 25, 244, 197, 195, 218, 11, 180, 89, 1, 71, 192, 191, 33, 50, 14, 121, 108, 91, 226, 223, 231, 128, 131, 56, 42, 151, 219, 122, 17, 131, 26, 175, 97, 159, 70, 146, 153, 50, 249, 145, 81, 150, 3, 222, 197, 9, 249, 74, 175, 241, 135, 61, 213, 168, 250, 44, 1, 215, 143, 234, 74, 20, 173, 18, 242, 138, 247, 102, 227, 240, 172, 100, 242, 138, 64, 22, 129, 114, 41, 50, 67, 240, 12, 135, 6, 169, 48, 191, 91, 242, 234, 199, 253, 182, 192, 53, 214, 247, 188, 99, 47, 245, 210, 35, 30, 23, 153, 72, 1, 22, 71, 119, 217, 136, 215, 46, 241, 52, 31, 238, 19, 168, 251, 138, 242, 231, 72, 81, 158, 191, 139, 186, 214, 123, 92, 79, 253, 131, 196, 84, 251, 22, 109, 89, 251, 180, 208, 46, 218, 6, 123, 114, 30, 21, 8, 167, 239, 20, 144, 64, 30, 56, 70, 112, 205, 17, 238, 11, 173, 83, 246, 133, 156, 181, 98, 155, 181, 142, 220, 66, 0, 76, 5, 56, 17, 212, 63, 222, 114, 77, 67, 149, 251, 241, 237, 225, 233, 197, 90, 168, 122, 35, 33, 84, 91, 30, 54, 82, 47, 89, 179, 233, 139, 72, 48, 110, 64, 233, 59, 238, 232, 122, 33, 5, 254, 238, 151, 95, 149, 158, 106, 93, 151, 225, 34, 42, 64, 136, 187, 157, 28, 180, 189, 140, 48, 59, 153, 88, 153, 31, 9, 173, 232, 61, 35, 140, 42, 41, 42, 168, 139, 194, 52, 252, 254, 193, 104, 201, 98, 83, 154, 180, 20, 238, 80, 66, 38, 3, 188, 167, 45, 65, 101, 147, 202, 213, 219, 232, 58, 59, 5, 229, 169, 31, 189, 102, 152, 35, 85, 194, 176, 30, 184, 145, 118, 90, 184, 200, 89, 224, 188, 69, 205, 41, 217, 84, 147, 37, 95, 183, 45, 63, 44, 127, 228, 147, 189, 71, 113, 182, 39, 138, 145, 238, 70, 78, 242, 98, 187, 97, 169, 66, 152, 109, 22, 199, 58, 91, 60, 29, 29, 40, 155, 19, 145, 241, 157, 143, 0, 127, 225, 191, 232, 140, 27, 72, 71, 44, 225, 152, 21, 203, 173, 194, 215, 179, 39, 109, 138, 241, 148, 5, 121, 123, 44, 26, 178, 136, 213, 177, 16, 174, 134, 108, 164, 51, 215, 149, 183, 99, 36, 78, 159, 252, 94, 234, 106, 65, 245, 47, 161, 50, 196, 58, 203, 161, 175, 129, 249, 104, 94, 52, 120, 99, 22, 97, 254, 193, 203, 112, 210, 77, 75, 166, 111, 211, 6, 172, 140, 154, 180, 80, 108, 126, 55, 181, 227, 89, 7, 83, 114, 177, 80, 56, 33, 100, 39, 4, 183, 122, 172, 168, 20, 86, 19, 222, 232, 35, 17, 38, 182, 33, 106, 64, 114, 95, 123, 0, 184, 54, 42, 169, 83, 215, 150, 93, 82, 3, 49, 246, 18, 200, 30, 76, 151, 211, 116, 185, 225, 20, 254, 223, 180, 201, 197, 69, 80, 228, 253, 93, 84, 12, 75, 220, 151, 34, 217, 64, 176, 161, 11, 133, 148, 206, 191, 225, 157, 226, 144, 191, 86, 21, 203, 120, 195, 175, 199, 12, 135, 44, 107, 106, 95, 106, 209, 0, 58, 103, 41, 203, 99, 1, 52
};

float toradian(float degree){
    return (3.14159/180)*degree;
}

void draw_rectangle(float x, float y, float w, float h, int fill){
    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_LINE_LOOP);
        glVertex2f(x, y);
        glVertex2f(x+w, y);
        glVertex2f(x+w, y+h);
        glVertex2f(x, y+h);
    glEnd();
    glFlush();
}

void draw_circle(float x, float y, float r, int fill){
    float i;
    float x_cord, y_cord;
    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_POINTS);

    for (i = 0; i < 360; i+= 0.6){
        x_cord = x + r*cos(toradian((float)i));
        y_cord = y + r*sin(toradian((float)i));
        glVertex2f(x_cord, y_cord);
    }
    glEnd();
    glFlush();
}

void draw_half_circle(float x, float y, float r, int fill,float angle){
    float i;
    float x_cord, y_cord;

    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_POINTS);

    for (i = angle; i < angle+180; i+= 0.6){
        x_cord = x + r*cos(toradian((float)i));
        y_cord = y + r*sin(toradian((float)i));
        glVertex2f(x_cord, y_cord);
    }
    glEnd();
    glFlush();
}
void plastic_waste(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x,y);
    glVertex2f(x + 32,y - 10);
    glVertex2f(x + 46,y + 31);
    glVertex2f(x + 62,y + 10);
    glVertex2f(x + 33,y - 20);
    glEnd();
}

void plastic_waste2(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x,y);
    glVertex2f(x + 26,y - 20);
    glVertex2f(x + 46,y + 10);
    glVertex2f(x + 56,y);
    glVertex2f(x + 31,y - 20);
    glVertex2f(x + 3,y - 18);
    glEnd();
}

void plastic_waste3(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x , y);
    glVertex2f(x + 15, y + 5);
    glVertex2f(x + 22 , y - 20);
    glVertex2f(x + 4, y - 12);
    glEnd();
}

void RenderString(float x, float y, void *font, const char* string, int r, int g, int b)
{
  char *c;
  int j = strlen(string);
  glColor3f(r, g, b);
  glRasterPos2f(x, y);
  for(int i=0;i<j;i++)
    glutBitmapCharacter(font, string[i]);
}

class mountain{
public:
   mountain(){
    //printf("object created\n" );
  }
  void draw_bubble(int x,int y,int size) {
      glColor3ub(255,255,255);
      draw_circle(x-size*2-30,y-size*1.5-30,size/10,1);
      draw_circle(x-size*2-20,y-size*1.5-10,size/10,1);
      draw_circle(x+size,y+size,size,1);
      draw_circle(x+size,y+size,size,1);
      draw_circle(x-size,y-size,size,1);
      draw_circle(x+size,y-size,size,1);
      draw_circle(x-size,y+size,size,1);
      draw_circle(x,y,size,1);
      draw_circle(x+size+10,y,size,1);
      draw_circle(x,y+size+10,size,1);
      draw_circle(x-size-10,y,size,1);
      draw_circle(x,y-size-10,size,1);
      draw_rectangle(700,700,100,100,1);
      char string[] = "Hello";
      glRasterPos2f(x, y);
      // RenderString(0.0f, 0.0f, GLUT_BITMAP_TIMES_ROMAN_24, "Hello", 1.0, 0.0, 0.0);
  }

};

void init()
{
	glClearColor(0.0,0.0,0.98,1.0);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0,1000,0,1000);
}
void myReshape(int w,int h)
{
  printf("resized\n w=%d,h=%d",w,h);
	glClearColor(0.529,0.808,0.98,1.0);
	//glClearColor(0.50,0.88,0.96,0);
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	if(w<=h)
		glOrtho(0,1000,0*(GLfloat)h/(GLfloat)w,1000*(GLfloat)h/(GLfloat)w,0,1000);
	else
		glOrtho(0*(GLfloat)w/(GLfloat)h,1000*(GLfloat)w/(GLfloat)h,0,1000,0,1000);
	glMatrixMode(GL_MODELVIEW);
	glutPostRedisplay();

}
void callz(int x, int y, int scene_number) {
  int size = 75;
  mountain m;
  switch (scene_number) {
    case 1:
        if((motion_var - bubble_motion_var) >size){
          bubble_called =0;
          m.draw_bubble(300,300,size);
          RenderString(300-size, 300+size, GLUT_BITMAP_TIMES_ROMAN_24, "In olden days people", 0.0, 0.0, 0.0);
          RenderString(300-size, 300+size-30, GLUT_BITMAP_TIMES_ROMAN_24, "used to cook in", 0.0, 0.0, 0.0);
          RenderString(300-size, 300+size-30*2, GLUT_BITMAP_TIMES_ROMAN_24, "earthern pots. So,", 0.0, 0.0, 0.0);
          RenderString(300-size, 300+size-30*3, GLUT_BITMAP_TIMES_ROMAN_24, "there was no use", 0.0, 0.0, 0.0);
          RenderString(300-size, 300+size-30*4, GLUT_BITMAP_TIMES_ROMAN_24, "for plastic.", 0.0, 0.0, 0.0);

        }
        else{
          if(bubble_called == 0){
            bubble_motion_var = motion_var;
            bubble_called = 1;
          }
          m.draw_bubble(300,300,motion_var%size);
        }

  }

}
void display_scene3(){
  mountain m;
  glClearColor(0.3,0.3,0.3,1.0);
  glClear(GL_COLOR_BUFFER_BIT);
  callz(100,100,1);
  glFlush();

  glutSwapBuffers();
}
void mouse(int button, int state,int x, int y){
  printf("called\n");
  if(state == GLUT_DOWN && button == GLUT_LEFT_BUTTON) {
    printf("x: %d, y: %d",x,y);
  }
}

void idle_func(){
  if (motion_var < 0){
    motion_var = 0;
  }
  motion_var++;
  glutPostRedisplay();
}
int main(int argc,char **argv)
{
  for (int i = 1000; i < 2000; i++) {
    list_of_randoms[i] = rand()%1000;
  }
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGB);
	glutInitWindowSize(1000,1000);
	glutCreateWindow("Scene1");
  glutMouseFunc(mouse);
	init();
  glutIdleFunc(idle_func);
	//glutReshapeFunc(myReshape);
	glutDisplayFunc(display_scene3);
	glutMainLoop();
}
