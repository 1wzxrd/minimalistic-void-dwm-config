const char *colorname[] = {
  /* 8 normal colors */
  [0] = "#0b182e", /* black   */
  [1] = "#61779a", /* red     */
  [2] = "#6e87b0", /* green   */
  [3] = "#6f91bc", /* yellow  */
  [4] = "#8b8da3", /* blue    */
  [5] = "#96b7d8", /* magenta */
  [6] = "#81a5ce", /* cyan    */
  [7] = "#d9e8f9", /* white   */
  /* 8 bright colors */
  [8]  = "#405c82",  /* black   */
  [9]  = "#61779a",  /* red     */
  [10] = "#6e87b0", /* green   */
  [11] = "#6f91bc", /* yellow  */
  [12] = "#8b8da3", /* blue    */
  [13] = "#96b7d8", /* magenta */
  [14] = "#81a5ce", /* cyan    */
  [15] = "#d9e8f9", /* white   */
  /* special colors */
  [256] = "#0b182e", /* background */
  [257] = "#d9e8f9", /* foreground */
  [258] = "#d9e8f9",     /* cursor */
};
/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
