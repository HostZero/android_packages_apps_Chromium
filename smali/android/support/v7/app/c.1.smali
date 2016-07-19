.class public Landroid/support/v7/app/c;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/r;


# instance fields
.field private final a:Landroid/support/v7/app/e;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/h;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private final f:I

.field private final g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 7

    .prologue
    .line 181
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/c;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 183
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    .line 127
    iput-boolean v2, p0, Landroid/support/v7/app/c;->h:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Landroid/support/v7/app/l;

    invoke-direct {v0, p2}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    .line 196
    new-instance v0, Landroid/support/v7/app/d;

    invoke-direct {v0, p0}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/c;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroid/support/v7/app/c;->f:I

    .line 218
    iput p6, p0, Landroid/support/v7/app/c;->g:I

    .line 220
    new-instance v0, Landroid/support/v7/app/g;

    iget-object v1, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    invoke-interface {v1}, Landroid/support/v7/app/e;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/g;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    .line 1464
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    invoke-interface {v0}, Landroid/support/v7/app/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    iput-object v0, p0, Landroid/support/v7/app/c;->d:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/f;

    invoke-interface {v0}, Landroid/support/v7/app/f;->getDrawerToggleDelegate()Landroid/support/v7/app/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Landroid/support/v7/app/k;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/app/Activity;B)V

    iput-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    goto :goto_0

    .line 210
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 211
    new-instance v0, Landroid/support/v7/app/j;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/j;-><init>(Landroid/app/Activity;B)V

    iput-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Landroid/support/v7/app/i;

    invoke-direct {v0, p1}, Landroid/support/v7/app/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3031
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3032
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 3034
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 3035
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_1

    sget v0, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_minor:I

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3037
    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3038
    invoke-virtual {v3, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 3042
    :goto_2
    return v0

    .line 3032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3035
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$dimen;->mr_dialog_fixed_width_major:I

    goto :goto_1

    .line 3039
    :cond_2
    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 3040
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    .line 3042
    :cond_3
    const/4 v0, -0x2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 4063
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4064
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    invoke-interface {v0, p1}, Landroid/support/v7/app/e;->a(I)V

    .line 461
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4114
    invoke-static {p0}, Landroid/support/v7/app/c;->d(Landroid/content/Context;)I

    move-result v1

    .line 4115
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 4118
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4119
    invoke-static {v1, v0}, Landroid/support/customtabs/a;->compositeColors(II)I

    move-result v0

    .line 4121
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->a(I)V

    .line 4122
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 4095
    sget v1, Landroid/support/v7/mediarouter/R$attr;->colorPrimary:I

    invoke-static {p0, v1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4096
    sget v2, Landroid/support/v7/mediarouter/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v2}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v2

    .line 4097
    if-eqz p3, :cond_0

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->calculateContrast(II)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 4104
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4105
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4110
    return-void

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/support/v7/app/c;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    invoke-interface {v0}, Landroid/support/v7/app/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string/jumbo v0, "ActionBarDrawerToggle"

    const-string/jumbo v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c;->h:Z

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/e;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/e;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 457
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/c;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    return v0
.end method

.method private static b(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 4131
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4132
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4133
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 4134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4136
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/high16 v4, -0x22000000

    .line 3046
    .line 3125
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3126
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/mediarouter/R$attr;->isLightTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 3046
    :goto_0
    if-eqz v0, :cond_2

    .line 3047
    invoke-static {p0}, Landroid/support/v7/app/c;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 3048
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light:I

    .line 3059
    :goto_1
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1

    .line 3126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3050
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    goto :goto_1

    .line 3053
    :cond_2
    invoke-static {p0}, Landroid/support/v7/app/c;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 3054
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    goto :goto_1

    .line 3056
    :cond_3
    sget v0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter:I

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/c;)V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 64
    .line 2285
    iget-object v0, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    :goto_0
    return-void

    .line 2288
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 4068
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4069
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 4074
    sget v1, Landroid/support/v7/mediarouter/R$attr;->colorPrimary:I

    invoke-static {p0, v1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4075
    invoke-static {v0, v1}, Landroid/support/customtabs/a;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 4079
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x22000000

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 4083
    sget v0, Landroid/support/v7/mediarouter/R$attr;->colorPrimary:I

    invoke-static {p0, v0}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v0

    .line 4084
    const v1, 0x1010031

    invoke-static {p0, v1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4086
    invoke-static {v0, v1}, Landroid/support/customtabs/a;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 4088
    sget v0, Landroid/support/v7/mediarouter/R$attr;->colorAccent:I

    invoke-static {p0, v0}, Landroid/support/v7/app/c;->b(Landroid/content/Context;I)I

    move-result v0

    .line 4090
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/h;->a(F)V

    .line 391
    iget-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    if-eqz v0, :cond_0

    .line 392
    iget v0, p0, Landroid/support/v7/app/c;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/c;->a(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/h;->a(F)V

    .line 379
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/c;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    iput-boolean v1, p0, Landroid/support/v7/app/c;->e:Z

    .line 365
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/h;->a(F)V

    .line 406
    iget-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    if-eqz v0, :cond_0

    .line 407
    iget v0, p0, Landroid/support/v7/app/c;->f:I

    invoke-direct {p0, v0}, Landroid/support/v7/app/c;->a(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 239
    iget-object v0, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/h;->a(F)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/c;->e:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/c;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/c;->g:I

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/c;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/support/v7/app/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/h;->a(F)V

    goto :goto_0

    .line 245
    :cond_2
    iget v1, p0, Landroid/support/v7/app/c;->f:I

    goto :goto_1
.end method
