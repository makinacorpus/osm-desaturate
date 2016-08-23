/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              desaturate(#e5ddd6,40%);
@water:             desaturate(#73b6e5,40%);
@grass:             desaturate(#d0e6a8,40%);
@beach:             desaturate(#FFEEC7,40%);
@park:              desaturate(#cfde9e,40%);
@cemetery:          desaturate(#D6DED2,40%);
@wooded:            desaturate(#a0cc5c,40%);
@agriculture:       desaturate(#F2E8B6,40%);

@building:          desaturate(#d3c5b6,40%);
@hospital:          desaturate(#eedddb,40%);
@school:            desaturate(#f3edd8,40%);
@sports:            desaturate(#d0e6a8,40%);

@residential:       saturate(@land,10%);
@commercial:        saturate(@land,20%);
@industrial:        saturate(@land,30%);
@parking:           desaturate(#EEE,40%);

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     darken(@land,10%);
@motorway_fill:     desaturate(#fff,40%);
@motorway_case:     darken(@land,15%);

@trunk_line:        @motorway_line;
@trunk_fill:        desaturate(#fff,40%);
@trunk_case:        @motorway_case;

@primary_line:      @motorway_line;
@primary_fill:      desaturate(#fff,40%);
@primary_case:      @motorway_case;

@secondary_line:    @motorway_line;
@secondary_fill:    desaturate(#fff,40%);
@secondary_case:    @motorway_case;

@standard_line:     @motorway_line;
@standard_fill:     desaturate(#fff,40%);
@standard_case:     @motorway_case;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   desaturate(#FAFAF5,40%);
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        desaturate(#FAFAF5,40%);
@cycle_case:        @land;

@rail_line:         desaturate(#999,40%);
@rail_fill:         desaturate(#fff,40%);
@rail_case:         @land;

@aeroway:           darken(@land,20%);

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           desaturate(#324,40%);

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      desaturate(#435,40%);
@country_halo:      @place_halo;

@state_text:        desaturate(#546,40%);
@state_halo:        @place_halo;

@city_text:         desaturate(#444,40%);
@city_halo:         @place_halo;

@town_text:         desaturate(#666,40%);
@town_halo:         @place_halo;

@poi_text:          desaturate(#888,40%);

@road_text:         desaturate(#777,40%);
@road_halo:         desaturate(#fff,40%);

@other_text:        desaturate(#888,40%);
@other_halo:        @place_halo;

@locality_text:     desaturate(#aaa,40%);
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      desaturate(#888,40%);
@village_halo:      @place_halo;

/* ****************************************************************** */
