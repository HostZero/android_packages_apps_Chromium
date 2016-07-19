.class public final Landroid/support/v4/view/a/h;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/a/m;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1877
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1878
    new-instance v0, Landroid/support/v4/view/a/k;

    invoke-direct {v0}, Landroid/support/v4/view/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    .line 1894
    :goto_0
    return-void

    .line 1879
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1880
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1881
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1882
    new-instance v0, Landroid/support/v4/view/a/q;

    invoke-direct {v0}, Landroid/support/v4/view/a/q;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1883
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 1884
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1885
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1886
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1887
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 1888
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1889
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 1890
    new-instance v0, Landroid/support/v4/view/a/l;

    invoke-direct {v0}, Landroid/support/v4/view/a/l;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0

    .line 1892
    :cond_6
    new-instance v0, Landroid/support/v4/view/a/m;

    invoke-direct {v0}, Landroid/support/v4/view/a/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    iput-object p1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    .line 2252
    return-void
.end method

.method public static a(Landroid/support/v4/view/a/h;)Landroid/support/v4/view/a/h;
    .locals 2

    .prologue
    .line 2304
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)Landroid/support/v4/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)Landroid/support/v4/view/a/h;
    .locals 1

    .prologue
    .line 2269
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/m;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)Landroid/support/v4/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/support/v4/view/a/h;
    .locals 1

    .prologue
    .line 2293
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    invoke-virtual {v0}, Landroid/support/v4/view/a/m;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)Landroid/support/v4/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Object;)Landroid/support/v4/view/a/h;
    .locals 1

    .prologue
    .line 2238
    if-eqz p0, :cond_0

    .line 2239
    new-instance v0, Landroid/support/v4/view/a/h;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/h;-><init>(Ljava/lang/Object;)V

    .line 2241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic q()Landroid/support/v4/view/a/m;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 2497
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;I)V

    .line 2498
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2673
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2674
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2336
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2337
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3026
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3027
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3194
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/a/r;

    iget-object v2, p1, Landroid/support/v4/view/a/r;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3195
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 2784
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;Z)V

    .line 2785
    return-void
.end method

.method public final a(Landroid/support/v4/view/a/i;)Z
    .locals 3

    .prologue
    .line 2530
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/view/a/i;->a(Landroid/support/v4/view/a/i;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2688
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2689
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2313
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 2314
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2437
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2438
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3050
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3051
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3198
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/a/s;

    invoke-static {p1}, Landroid/support/v4/view/a/s;->a(Landroid/support/v4/view/a/s;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3199
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 2808
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->d(Ljava/lang/Object;Z)V

    .line 2809
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 2482
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2697
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2698
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2419
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 2420
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3098
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3099
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 2833
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->h(Ljava/lang/Object;Z)V

    .line 2834
    return-void
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2712
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2713
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2641
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 2642
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 2858
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->i(Ljava/lang/Object;Z)V

    .line 2859
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 2769
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 2882
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->g(Ljava/lang/Object;Z)V

    .line 2883
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 2793
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3778
    if-ne p0, p1, :cond_1

    .line 3795
    :cond_0
    :goto_0
    return v0

    .line 3781
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 3782
    goto :goto_0

    .line 3784
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 3785
    goto :goto_0

    .line 3787
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/h;

    .line 3788
    iget-object v2, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 3789
    iget-object v2, p1, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 3790
    goto :goto_0

    .line 3792
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3793
    goto :goto_0
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 2906
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->a(Ljava/lang/Object;Z)V

    .line 2907
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 2817
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 2930
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->e(Ljava/lang/Object;Z)V

    .line 2931
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 2842
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h(Z)V
    .locals 2

    .prologue
    .line 2954
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->b(Ljava/lang/Object;Z)V

    .line 2955
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 2867
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 2

    .prologue
    .line 3002
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/m;->f(Ljava/lang/Object;Z)V

    .line 3003
    return-void
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 2891
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 2915
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 2939
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3011
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3035
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3059
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3083
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 3109
    sget-object v0, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v1, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/m;->q(Ljava/lang/Object;)V

    .line 3110
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3801
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3803
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3805
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/h;->a(Landroid/graphics/Rect;)V

    .line 3806
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "; boundsInParent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/h;->c(Landroid/graphics/Rect;)V

    .line 3809
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "; boundsInScreen: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    const-string/jumbo v0, "; packageName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3812
    const-string/jumbo v0, "; className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->m()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3813
    const-string/jumbo v0, "; text: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3814
    const-string/jumbo v0, "; contentDescription: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->o()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3815
    const-string/jumbo v0, "; viewId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4140
    sget-object v1, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v3, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/a/m;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    const-string/jumbo v0, "; checkable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4721
    sget-object v1, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v3, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/a/m;->g(Ljava/lang/Object;)Z

    move-result v1

    .line 3817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3818
    const-string/jumbo v0, "; checked: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4745
    sget-object v1, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v3, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/a/m;->h(Ljava/lang/Object;)Z

    move-result v1

    .line 3818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3819
    const-string/jumbo v0, "; focusable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3820
    const-string/jumbo v0, "; focused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3821
    const-string/jumbo v0, "; selected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3822
    const-string/jumbo v0, "; clickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3823
    const-string/jumbo v0, "; longClickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3824
    const-string/jumbo v0, "; enabled: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3825
    const-string/jumbo v0, "; password: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4963
    sget-object v1, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v3, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/a/m;->n(Ljava/lang/Object;)Z

    move-result v1

    .line 3825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; scrollable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4987
    sget-object v1, Landroid/support/v4/view/a/h;->a:Landroid/support/v4/view/a/m;

    iget-object v3, p0, Landroid/support/v4/view/a/h;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/a/m;->o(Ljava/lang/Object;)Z

    move-result v1

    .line 3826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    const-string/jumbo v0, "; ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    invoke-virtual {p0}, Landroid/support/v4/view/a/h;->c()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3830
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v3, v1, v3

    .line 3831
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 5843
    sparse-switch v3, :sswitch_data_0

    .line 5881
    const-string/jumbo v0, "ACTION_UNKNOWN"

    .line 3832
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    if-eqz v1, :cond_0

    .line 3834
    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 3836
    goto :goto_0

    .line 5845
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    goto :goto_1

    .line 5847
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    .line 5849
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    goto :goto_1

    .line 5851
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    .line 5853
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    goto :goto_1

    .line 5855
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    goto :goto_1

    .line 5857
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 5859
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 5861
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 5863
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 5865
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    .line 5867
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    .line 5869
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    .line 5871
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    .line 5873
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    goto :goto_1

    .line 5875
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    goto :goto_1

    .line 5877
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    goto :goto_1

    .line 5879
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 3837
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5843
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
