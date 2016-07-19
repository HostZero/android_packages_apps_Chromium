.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/y;


# static fields
.field private static G:Landroid/support/v4/widget/p;

.field private static final a:[I

.field private static final b:Z

.field private static final c:Z


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private final F:Ljava/util/ArrayList;

.field private final d:Landroid/support/v4/widget/o;

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:Landroid/graphics/Paint;

.field private final j:Landroid/support/v4/widget/am;

.field private final k:Landroid/support/v4/widget/am;

.field private final l:Landroid/support/v4/widget/u;

.field private final m:Landroid/support/v4/widget/u;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/support/v4/widget/r;

.field private u:F

.field private v:F

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->c:Z

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 333
    if-lt v0, v4, :cond_2

    .line 334
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-direct {v0}, Landroid/support/v4/widget/j;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    .line 338
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v1, v2

    .line 172
    goto :goto_1

    .line 336
    :cond_2
    new-instance v0, Landroid/support/v4/widget/q;

    invoke-direct {v0}, Landroid/support/v4/widget/q;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    new-instance v0, Landroid/support/v4/widget/o;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/o;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->d:Landroid/support/v4/widget/o;

    .line 181
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->i:Landroid/graphics/Paint;

    .line 191
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 213
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    .line 352
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 353
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 354
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->f:I

    .line 355
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    .line 357
    new-instance v2, Landroid/support/v4/widget/u;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/u;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/u;

    .line 358
    new-instance v2, Landroid/support/v4/widget/u;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/u;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/u;

    .line 360
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/u;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ap;)Landroid/support/v4/widget/am;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    .line 361
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/am;->a(I)V

    .line 362
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/am;->a(F)V

    .line 363
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/u;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/u;->a(Landroid/support/v4/widget/am;)V

    .line 365
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/u;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ap;)Landroid/support/v4/widget/am;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    .line 366
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/am;->a(I)V

    .line 367
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/am;->a(F)V

    .line 368
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/u;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/u;->a(Landroid/support/v4/widget/am;)V

    .line 371
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 373
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 376
    new-instance v1, Landroid/support/v4/widget/n;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 377
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/au;->a(Landroid/view/ViewGroup;Z)V

    .line 378
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    invoke-interface {v1, p0}, Landroid/support/v4/widget/p;->a(Landroid/view/View;)V

    .line 380
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/p;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/util/ArrayList;

    .line 386
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 545
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/n;->a(II)I

    move-result v1

    .line 547
    if-ne v1, v2, :cond_3

    .line 548
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    .line 552
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 554
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    .line 555
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/widget/am;->e()V

    .line 557
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 572
    :cond_2
    :goto_2
    return-void

    .line 549
    :cond_3
    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 550
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_0

    .line 554
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    goto :goto_1

    .line 559
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_2

    .line 561
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_2

    .line 565
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    goto :goto_2

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 756
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 757
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 758
    if-nez p2, :cond_0

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 762
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 756
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_1

    .line 769
    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1397
    .line 1398
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1399
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1400
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1401
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 1403
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v6, v0, Landroid/support/v4/widget/s;->c:Z

    if-eqz v6, :cond_1

    .line 1407
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1409
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1410
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1417
    :goto_1
    iput-boolean v3, v0, Landroid/support/v4/widget/s;->c:Z

    .line 1399
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1413
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 1420
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/u;

    invoke-virtual {v0}, Landroid/support/v4/widget/u;->a()V

    .line 1421
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/u;

    invoke-virtual {v0}, Landroid/support/v4/widget/u;->a()V

    .line 1423
    if-eqz v1, :cond_4

    .line 1424
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1426
    :cond_4
    return-void
.end method

.method static b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->b:F

    return v0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    return v0
.end method

.method private d()Landroid/view/View;
    .locals 4

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 807
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 808
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget-boolean v0, v0, Landroid/support/v4/widget/s;->d:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 813
    :goto_1
    return-object v0

    .line 807
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 813
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static d(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1271
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->a:I

    .line 1272
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/n;->a(II)I

    move-result v0

    .line 1274
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Landroid/view/View;
    .locals 4

    .prologue
    .line 1650
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1651
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1652
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1653
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1657
    :goto_1
    return-object v0

    .line 1651
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1657
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 856
    const-string/jumbo v0, "LEFT"

    .line 861
    :goto_0
    return-object v0

    .line 858
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 859
    const-string/jumbo v0, "RIGHT"

    goto :goto_0

    .line 861
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 90
    .line 4758
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 90
    goto :goto_0
.end method

.method private static g(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1434
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 1440
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/widget/s;->b:F

    .line 1441
    iput-boolean v2, v0, Landroid/support/v4/widget/s;->d:Z

    .line 1443
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1452
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1453
    return-void

    .line 1445
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method private i(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1521
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget-boolean v0, v0, Landroid/support/v4/widget/s;->d:Z

    return v0
.end method

.method private j(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1553
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    .line 630
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 631
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 633
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_0

    .line 635
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 835
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/n;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 837
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 838
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 839
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 840
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v4

    .line 841
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_0

    .line 845
    :goto_1
    return-object v0

    .line 838
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1662
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    if-nez v0, :cond_1

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1664
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1666
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1667
    :goto_0
    if-ge v7, v1, :cond_0

    .line 1668
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1667
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1670
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1671
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    .line 1673
    :cond_1
    return-void
.end method

.method final a(ILandroid/view/View;)V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 683
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v1}, Landroid/support/v4/widget/am;->a()I

    move-result v1

    .line 684
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v4}, Landroid/support/v4/widget/am;->a()I

    move-result v4

    .line 687
    if-eq v1, v3, :cond_0

    if-ne v4, v3, :cond_4

    :cond_0
    move v1, v3

    .line 695
    :goto_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 696
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 697
    iget v4, v0, Landroid/support/v4/widget/s;->b:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_7

    .line 2714
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 2715
    iget-boolean v3, v0, Landroid/support/v4/widget/s;->d:Z

    if-eqz v3, :cond_2

    .line 2716
    iput-boolean v2, v0, Landroid/support/v4/widget/s;->d:Z

    .line 2717
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_1

    .line 2718
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    invoke-interface {v0}, Landroid/support/v4/widget/r;->b()V

    .line 2721
    :cond_1
    invoke-direct {p0, p2, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 2726
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2727
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2728
    if-eqz v0, :cond_2

    .line 2729
    invoke-virtual {v0, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 704
    :cond_2
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:I

    if-eq v1, v0, :cond_3

    .line 705
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:I

    .line 711
    :cond_3
    return-void

    .line 689
    :cond_4
    if-eq v1, v0, :cond_5

    if-ne v4, v0, :cond_6

    :cond_5
    move v1, v0

    .line 690
    goto :goto_0

    :cond_6
    move v1, v2

    .line 692
    goto :goto_0

    .line 699
    :cond_7
    iget v0, v0, Landroid/support/v4/widget/s;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 2736
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 2737
    iget-boolean v2, v0, Landroid/support/v4/widget/s;->d:Z

    if-nez v2, :cond_2

    .line 2738
    iput-boolean v3, v0, Landroid/support/v4/widget/s;->d:Z

    .line 2739
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_8

    .line 2740
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    invoke-interface {v0}, Landroid/support/v4/widget/r;->a()V

    .line 2743
    :cond_8
    invoke-direct {p0, p2, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 2746
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2747
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 2750
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public final a(Landroid/support/v4/widget/r;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    .line 505
    return-void
.end method

.method final a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 779
    iget v1, v0, Landroid/support/v4/widget/s;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iput p2, v0, Landroid/support/v4/widget/s;->b:F

    .line 2772
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Landroid/support/v4/widget/r;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/r;->a(F)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 424
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->z:Ljava/lang/Object;

    .line 425
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->A:Z

    .line 426
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 427
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 428
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    .line 802
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1618
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1620
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1621
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1622
    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1623
    invoke-direct {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1624
    const/4 v0, 0x1

    .line 1625
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1620
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1628
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1632
    :cond_3
    if-nez v0, :cond_5

    .line 1633
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1634
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1635
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1636
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1637
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1634
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1642
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1730
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 1733
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1736
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 1747
    :goto_0
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->d:Landroid/support/v4/widget/o;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1750
    :cond_1
    return-void

    .line 1741
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const v3, 0x800003

    .line 1462
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1463
    if-nez v0, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1468
    return-void
.end method

.method final c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->a:I

    .line 797
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/n;->a(II)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 4

    .prologue
    const v3, 0x800003

    .line 1502
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1503
    if-nez v0, :cond_0

    .line 1504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    .line 1508
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1602
    instance-of v0, p1, Landroid/support/v4/widget/s;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1121
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1122
    const/4 v1, 0x0

    .line 1123
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1124
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->b:F

    .line 1125
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1127
    :cond_0
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->h:F

    .line 1130
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/am;->a(Z)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/am;->a(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1131
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1133
    :cond_1
    return-void
.end method

.method public final d(I)Z
    .locals 1

    .prologue
    .line 1537
    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1538
    if-eqz v0, :cond_0

    .line 1539
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    .line 1541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .prologue
    .line 1204
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 1205
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    .line 1206
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1209
    if-eqz v5, :cond_6

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1211
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_5

    .line 1212
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1213
    if-eq v8, p2, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3136
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3137
    if-eqz v0, :cond_2

    .line 3138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    const/4 v0, 0x1

    .line 1213
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 1219
    const/4 v0, 0x3

    invoke-virtual {p0, v8, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1220
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1221
    if-le v0, v1, :cond_a

    :goto_2
    move v1, v0

    move v0, v2

    .line 1211
    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 3138
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3140
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1223
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1224
    if-lt v0, v2, :cond_0

    :cond_4
    move v0, v2

    goto :goto_3

    .line 1227
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_6
    move v0, v2

    .line 1229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1230
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1232
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->h:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-eqz v5, :cond_8

    .line 1233
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1234
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1235
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1236
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1263
    :cond_7
    :goto_4
    return v7

    .line 1239
    :cond_8
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1241
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1242
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1243
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v2}, Landroid/support/v4/widget/am;->b()I

    move-result v2

    .line 1244
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1246
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1248
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1249
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 1250
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1252
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1253
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1254
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1255
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v3}, Landroid/support/v4/widget/am;->b()I

    move-result v3

    .line 1256
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1258
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1260
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1261
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public final e(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1476
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 1482
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/s;->b:F

    .line 1483
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/s;->d:Z

    .line 1492
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1493
    return-void

    .line 1485
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1486
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1489
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/am;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public final e(I)Z
    .locals 1

    .prologue
    .line 1568
    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_0

    .line 1570
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    .line 1572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1588
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/s;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1607
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1593
    instance-of v0, p1, Landroid/support/v4/widget/s;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/s;

    check-cast p1, Landroid/support/v4/widget/s;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/support/v4/widget/s;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/s;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 872
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 874
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 866
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 868
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1192
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1193
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1194
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->z:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/p;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1195
    if-lez v0, :cond_0

    .line 1196
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1197
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1279
    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1282
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/am;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/am;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1287
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 1321
    :goto_1
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 3576
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 3577
    :goto_2
    if-ge v3, v4, :cond_4

    .line 3578
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 3579
    iget-boolean v0, v0, Landroid/support/v4/widget/s;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 1321
    :goto_3
    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 1289
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1291
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    .line 1292
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->v:F

    .line 1293
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->h:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1294
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/am;->b(II)Landroid/view/View;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1300
    :goto_4
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    goto :goto_1

    .line 1306
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/am;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/u;

    invoke-virtual {v0}, Landroid/support/v4/widget/u;->a()V

    .line 1308
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/u;

    invoke-virtual {v0}, Landroid/support/v4/widget/u;->a()V

    move v0, v2

    goto :goto_1

    .line 1315
    :pswitch_2
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1317
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    goto :goto_0

    .line 3577
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 3583
    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1677
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 3646
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->e()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 1677
    :goto_0
    if-eqz v1, :cond_1

    .line 1678
    invoke-static {p2}, Landroid/support/v4/view/r;->b(Landroid/view/KeyEvent;)V

    .line 1681
    :goto_1
    return v0

    .line 3646
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1681
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1686
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1687
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->e()Landroid/view/View;

    move-result-object v1

    .line 1688
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4393
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1691
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1693
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    .line 1031
    sub-int v6, p4, p2

    .line 1032
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1033
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_8

    .line 1034
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1036
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1040
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 1042
    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    iget v1, v0, Landroid/support/v4/widget/s;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/s;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/s;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/s;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1033
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1047
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1048
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1052
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1053
    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroid/support/v4/widget/s;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 1054
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 1060
    :goto_2
    iget v3, v0, Landroid/support/v4/widget/s;->b:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 1062
    :goto_3
    iget v4, v0, Landroid/support/v4/widget/s;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 1064
    sparse-switch v4, :sswitch_data_0

    .line 1067
    iget v4, v0, Landroid/support/v4/widget/s;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/s;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1098
    :goto_4
    if-eqz v3, :cond_2

    .line 1099
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1102
    :cond_2
    iget v0, v0, Landroid/support/v4/widget/s;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 1103
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1104
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1056
    :cond_3
    int-to-float v1, v9

    iget v2, v0, Landroid/support/v4/widget/s;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 1057
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    .line 1060
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 1073
    :sswitch_0
    sub-int v4, p5, p3

    .line 1074
    iget v10, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1082
    :sswitch_1
    sub-int v11, p5, p3

    .line 1083
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 1087
    iget v12, v0, Landroid/support/v4/widget/s;->topMargin:I

    if-ge v4, v12, :cond_6

    .line 1088
    iget v4, v0, Landroid/support/v4/widget/s;->topMargin:I

    .line 1092
    :cond_5
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1089
    :cond_6
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_5

    .line 1090
    iget v4, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    .line 1102
    :cond_7
    const/4 v0, 0x4

    goto :goto_5

    .line 1108
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1110
    return-void

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/16 v1, 0x12c

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    .line 878
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 879
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 880
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 881
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 883
    if-ne v3, v11, :cond_0

    if-eq v5, v11, :cond_c

    .line 884
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 889
    if-eq v3, v7, :cond_1

    .line 891
    if-nez v3, :cond_1

    move v2, v1

    .line 895
    :cond_1
    if-eq v5, v7, :cond_c

    .line 898
    if-nez v5, :cond_c

    .line 908
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 910
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->z:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v3, v0

    .line 911
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 915
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 916
    :goto_2
    if-ge v4, v6, :cond_b

    .line 917
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 919
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_3

    .line 923
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 925
    if-eqz v3, :cond_2

    .line 926
    iget v8, v0, Landroid/support/v4/widget/s;->a:I

    invoke-static {v8, v5}, Landroid/support/v4/view/n;->a(II)I

    move-result v8

    .line 927
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 928
    sget-object v9, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->z:Ljava/lang/Object;

    invoke-interface {v9, v7, v10, v8}, Landroid/support/v4/widget/p;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 934
    :cond_2
    :goto_3
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 936
    iget v8, v0, Landroid/support/v4/widget/s;->leftMargin:I

    sub-int v8, v2, v8

    iget v9, v0, Landroid/support/v4/widget/s;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 938
    iget v9, v0, Landroid/support/v4/widget/s;->topMargin:I

    sub-int v9, v1, v9

    iget v0, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    sub-int v0, v9, v0

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 940
    invoke-virtual {v7, v8, v0}, Landroid/view/View;->measure(II)V

    .line 916
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 903
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v3, v4

    .line 910
    goto :goto_1

    .line 930
    :cond_6
    sget-object v9, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/support/v4/widget/p;

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->z:Ljava/lang/Object;

    invoke-interface {v9, v0, v10, v8}, Landroid/support/v4/widget/p;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_3

    .line 941
    :cond_7
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 942
    sget-boolean v8, Landroid/support/v4/widget/DrawerLayout;->c:Z

    if-eqz v8, :cond_8

    .line 943
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)F

    move-result v8

    iget v9, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_8

    .line 944
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;F)V

    .line 947
    :cond_8
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    .line 949
    and-int/lit8 v9, v8, 0x0

    if-eqz v9, :cond_9

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Child drawer has absolute gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but this DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already has a drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_9
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->f:I

    iget v9, v0, Landroid/support/v4/widget/s;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/support/v4/widget/s;->rightMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/support/v4/widget/s;->width:I

    invoke-static {p1, v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 957
    iget v9, v0, Landroid/support/v4/widget/s;->topMargin:I

    iget v10, v0, Landroid/support/v4/widget/s;->bottomMargin:I

    add-int/2addr v9, v10

    iget v0, v0, Landroid/support/v4/widget/s;->height:I

    invoke-static {p2, v9, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 960
    invoke-virtual {v7, v8, v0}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 962
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_b
    return-void

    :cond_c
    move v1, v0

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1698
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1699
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1701
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 1702
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_0

    .line 1704
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1708
    :cond_0
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1709
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1710
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1187
    .line 2970
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    if-nez v0, :cond_0

    .line 2978
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 2973
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 2997
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 2974
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    .line 1188
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1714
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1715
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1717
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    iget v0, v0, Landroid/support/v4/widget/s;->a:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    .line 1722
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    .line 1723
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    .line 1725
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1326
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/am;->b(Landroid/view/MotionEvent;)V

    .line 1327
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/am;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/am;->b(Landroid/view/MotionEvent;)V

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1332
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1373
    :goto_0
    :pswitch_0
    return v1

    .line 1334
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1336
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    .line 1337
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->v:F

    .line 1339
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    goto :goto_0

    .line 1344
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1347
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/am;->b(II)Landroid/view/View;

    move-result-object v4

    .line 1348
    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1349
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    sub-float/2addr v2, v4

    .line 1350
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->v:F

    sub-float/2addr v3, v4

    .line 1351
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/am;

    invoke-virtual {v4}, Landroid/support/v4/widget/am;->d()I

    move-result v4

    .line 1352
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1354
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object v2

    .line 1355
    if-eqz v2, :cond_1

    .line 1356
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1360
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    goto :goto_0

    .line 1366
    :pswitch_3
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1368
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1381
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1384
    if-eqz p1, :cond_0

    .line 1385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1387
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    if-nez v0, :cond_0

    .line 1115
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1117
    :cond_0
    return-void
.end method
