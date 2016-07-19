.class final Landroid/support/v7/app/o;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/ab;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/support/v4/widget/NestedScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/ab;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Landroid/support/v7/app/o;->m:Z

    .line 93
    iput v3, p0, Landroid/support/v7/app/o;->x:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/o;->E:I

    .line 112
    iput v3, p0, Landroid/support/v7/app/o;->L:I

    .line 116
    new-instance v0, Landroid/support/v7/app/p;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/o;)V

    iput-object v0, p0, Landroid/support/v7/app/o;->N:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/app/o;->a:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/ab;

    .line 169
    iput-object p3, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    .line 170
    new-instance v0, Landroid/support/v7/app/A;

    invoke-direct {v0, p2}, Landroid/support/v7/app/A;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/o;->M:Landroid/os/Handler;

    .line 172
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/a;->D:[I

    const v2, 0x7f0100bd

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v1, Landroid/support/v7/a/a;->E:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->F:I

    .line 176
    sget v1, Landroid/support/v7/a/a;->F:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->G:I

    .line 178
    sget v1, Landroid/support/v7/a/a;->H:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->H:I

    .line 179
    sget v1, Landroid/support/v7/a/a;->I:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->I:I

    .line 180
    sget v1, Landroid/support/v7/a/a;->J:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->J:I

    .line 182
    sget v1, Landroid/support/v7/a/a;->G:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/o;->K:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/o;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Landroid/support/v7/app/o;->E:I

    return p1
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 415
    if-nez p0, :cond_0

    .line 417
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 418
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 421
    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 437
    :goto_1
    return-object v0

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 427
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 428
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_1
    instance-of v0, p0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 434
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 437
    :goto_2
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/o;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/o;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/o;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/o;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 61
    .line 3701
    if-eqz p1, :cond_0

    .line 3702
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3705
    :cond_0
    if-eqz p2, :cond_1

    .line 3706
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3702
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3706
    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/o;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->p:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/app/o;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 198
    :cond_2
    if-lez v2, :cond_3

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 200
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    invoke-static {v3}, Landroid/support/v7/app/o;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/app/o;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->s:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/app/o;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/o;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/o;)Landroid/support/v7/app/ab;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/ab;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/o;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/o;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/app/o;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/app/o;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/o;->H:I

    return v0
.end method

.method static synthetic l(Landroid/support/v7/app/o;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/o;->I:I

    return v0
.end method

.method static synthetic m(Landroid/support/v7/app/o;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/o;->J:I

    return v0
.end method

.method static synthetic n(Landroid/support/v7/app/o;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/o;->K:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v13, -0x1

    const/4 v4, 0x1

    const/16 v12, 0x8

    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/ab;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ab;->supportRequestWindowFeature(I)Z

    .line 1218
    iget v0, p0, Landroid/support/v7/app/o;->G:I

    if-eqz v0, :cond_c

    .line 1221
    iget v0, p0, Landroid/support/v7/app/o;->L:I

    if-ne v0, v4, :cond_c

    .line 1222
    iget v0, p0, Landroid/support/v7/app/o;->G:I

    .line 213
    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/ab;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ab;->setContentView(I)V

    .line 1441
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v1, 0x7f0e0075

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1442
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1443
    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1444
    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1448
    const v1, 0x7f0e007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1593
    iget-object v1, p0, Landroid/support/v7/app/o;->g:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 1594
    iget-object v1, p0, Landroid/support/v7/app/o;->g:Landroid/view/View;

    move-object v2, v1

    .line 1602
    :goto_1
    if-eqz v2, :cond_f

    move v1, v4

    .line 1603
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/support/v7/app/o;->c(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1604
    :cond_0
    iget-object v9, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const/high16 v10, 0x20000

    const/high16 v11, 0x20000

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1608
    :cond_1
    if-eqz v1, :cond_10

    .line 1609
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v9, 0x7f0e007f

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1610
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    iget-boolean v2, p0, Landroid/support/v7/app/o;->m:Z

    if-eqz v2, :cond_2

    .line 1613
    iget v2, p0, Landroid/support/v7/app/o;->i:I

    iget v9, p0, Landroid/support/v7/app/o;->j:I

    iget v10, p0, Landroid/support/v7/app/o;->k:I

    iget v11, p0, Landroid/support/v7/app/o;->l:I

    invoke-virtual {v1, v2, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1617
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 1618
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1451
    :cond_3
    :goto_3
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1452
    const v2, 0x7f0e0079

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1453
    const v9, 0x7f0e0073

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1456
    invoke-static {v1, v6}, Landroid/support/v7/app/o;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 1457
    invoke-static {v2, v7}, Landroid/support/v7/app/o;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 1458
    invoke-static {v9, v8}, Landroid/support/v7/app/o;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 1672
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v2, 0x7f0e007b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    iput-object v1, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 1673
    iget-object v1, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 1674
    iget-object v1, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 1677
    const v1, 0x102000b

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    .line 1678
    iget-object v1, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1682
    iget-object v1, p0, Landroid/support/v7/app/o;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 1683
    iget-object v1, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    :cond_4
    :goto_4
    const v1, 0x1020019

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    .line 1717
    iget-object v1, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    iget-object v2, p0, Landroid/support/v7/app/o;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    iget-object v1, p0, Landroid/support/v7/app/o;->o:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1720
    iget-object v1, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v3

    .line 1727
    :goto_5
    const v1, 0x102001a

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    .line 1728
    iget-object v1, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    iget-object v9, p0, Landroid/support/v7/app/o;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1730
    iget-object v1, p0, Landroid/support/v7/app/o;->r:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1731
    iget-object v1, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 1739
    :goto_6
    const v1, 0x102001b

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    .line 1740
    iget-object v1, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    iget-object v9, p0, Landroid/support/v7/app/o;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1742
    iget-object v1, p0, Landroid/support/v7/app/o;->u:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1743
    iget-object v1, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 1751
    :goto_7
    if-eqz v2, :cond_16

    move v1, v4

    .line 1752
    :goto_8
    if-nez v1, :cond_5

    .line 1753
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2626
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/o;->C:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 2628
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2631
    iget-object v2, p0, Landroid/support/v7/app/o;->C:Landroid/view/View;

    invoke-virtual {v6, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2634
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v2, 0x7f0e0077

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2635
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    :goto_9
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_1c

    move v0, v4

    .line 1466
    :goto_a
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1d

    move v6, v4

    .line 1468
    :goto_b
    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1e

    move v1, v4

    .line 1472
    :goto_c
    if-nez v1, :cond_6

    .line 1473
    if-eqz v7, :cond_6

    .line 1474
    const v2, 0x7f0e007c

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1475
    if-eqz v2, :cond_6

    .line 1476
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    :cond_6
    if-eqz v6, :cond_7

    .line 1483
    iget-object v2, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_7

    .line 1484
    iget-object v2, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 1489
    :cond_7
    if-nez v0, :cond_a

    .line 1490
    iget-object v0, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    move-object v2, v0

    .line 1491
    :goto_d
    if-eqz v2, :cond_a

    .line 1492
    if-eqz v6, :cond_20

    move v0, v4

    :goto_e
    if-eqz v1, :cond_8

    const/4 v3, 0x2

    :cond_8
    or-int/2addr v3, v0

    .line 3513
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v1, 0x7f0e007a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3514
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v6, 0x7f0e007d

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3516
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_21

    .line 3518
    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;II)V

    .line 3520
    if-eqz v1, :cond_9

    .line 3521
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3523
    :cond_9
    if-eqz v0, :cond_a

    .line 3524
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1499
    :cond_a
    :goto_f
    iget-object v0, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    .line 1500
    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/support/v7/app/o;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 1501
    iget-object v1, p0, Landroid/support/v7/app/o;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1502
    iget v1, p0, Landroid/support/v7/app/o;->E:I

    .line 1503
    if-ltz v1, :cond_b

    .line 1504
    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1505
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 215
    :cond_b
    return-void

    .line 1224
    :cond_c
    iget v0, p0, Landroid/support/v7/app/o;->F:I

    goto/16 :goto_0

    .line 1595
    :cond_d
    iget v1, p0, Landroid/support/v7/app/o;->h:I

    if-eqz v1, :cond_e

    .line 1596
    iget-object v1, p0, Landroid/support/v7/app/o;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1597
    iget v2, p0, Landroid/support/v7/app/o;->h:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1598
    goto/16 :goto_1

    :cond_e
    move-object v2, v5

    .line 1599
    goto/16 :goto_1

    :cond_f
    move v1, v3

    .line 1602
    goto/16 :goto_2

    .line 1621
    :cond_10
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 1685
    :cond_11
    iget-object v1, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    iget-object v1, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 1688
    iget-object v1, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_12

    .line 1689
    iget-object v1, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1690
    iget-object v2, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1691
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1692
    iget-object v9, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1695
    :cond_12
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 1722
    :cond_13
    iget-object v1, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    iget-object v2, p0, Landroid/support/v7/app/o;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    iget-object v1, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v4

    .line 1724
    goto/16 :goto_5

    .line 1733
    :cond_14
    iget-object v1, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    iget-object v9, p0, Landroid/support/v7/app/o;->r:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    iget-object v1, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1736
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    .line 1745
    :cond_15
    iget-object v1, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    iget-object v9, p0, Landroid/support/v7/app/o;->u:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    iget-object v1, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1748
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_7

    :cond_16
    move v1, v3

    .line 1751
    goto/16 :goto_8

    .line 2637
    :cond_17
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    .line 2639
    iget-object v1, p0, Landroid/support/v7/app/o;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v4

    .line 2640
    :goto_10
    if-eqz v1, :cond_1b

    .line 2642
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/o;->A:Landroid/widget/TextView;

    .line 2643
    iget-object v1, p0, Landroid/support/v7/app/o;->A:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/o;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2648
    iget v1, p0, Landroid/support/v7/app/o;->x:I

    if-eqz v1, :cond_19

    .line 2649
    iget-object v1, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v7/app/o;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    :cond_18
    move v1, v3

    .line 2639
    goto :goto_10

    .line 2650
    :cond_19
    iget-object v1, p0, Landroid/support/v7/app/o;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 2651
    iget-object v1, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/app/o;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 2655
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/app/o;->A:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v9, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v1, v2, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2659
    iget-object v1, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 2663
    :cond_1b
    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window;

    const v2, 0x7f0e0077

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2664
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2665
    iget-object v1, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2666
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_1c
    move v0, v3

    .line 1464
    goto/16 :goto_a

    :cond_1d
    move v6, v3

    .line 1466
    goto/16 :goto_b

    :cond_1e
    move v1, v3

    .line 1468
    goto/16 :goto_c

    .line 1490
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    move-object v2, v0

    goto/16 :goto_d

    :cond_20
    move v0, v3

    .line 1492
    goto/16 :goto_e

    .line 3528
    :cond_21
    if-eqz v1, :cond_22

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_22

    .line 3529
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v5

    .line 3532
    :cond_22
    if-eqz v0, :cond_23

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_23

    .line 3533
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, v5

    .line 3537
    :cond_23
    if-nez v1, :cond_24

    if-eqz v0, :cond_a

    .line 3541
    :cond_24
    iget-object v2, p0, Landroid/support/v7/app/o;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25

    .line 3543
    iget-object v2, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/q;

    invoke-direct {v3, p0, v1, v0}, Landroid/support/v7/app/q;-><init>(Landroid/support/v7/app/o;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/M;)V

    .line 3553
    iget-object v2, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/r;

    invoke-direct {v3, p0, v1, v0}, Landroid/support/v7/app/r;-><init>(Landroid/support/v7/app/o;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    .line 3559
    :cond_25
    iget-object v2, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    .line 3561
    iget-object v2, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/s;

    invoke-direct {v3, p0, v1, v0}, Landroid/support/v7/app/s;-><init>(Landroid/support/v7/app/o;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3572
    iget-object v2, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/t;

    invoke-direct {v3, p0, v1, v0}, Landroid/support/v7/app/t;-><init>(Landroid/support/v7/app/o;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    .line 3580
    :cond_26
    if-eqz v1, :cond_27

    .line 3581
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3583
    :cond_27
    if-eqz v0, :cond_a

    .line 3584
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_f
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/o;->g:Landroid/view/View;

    .line 253
    iput p1, p0, Landroid/support/v7/app/o;->h:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/o;->m:Z

    .line 255
    return-void
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 302
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/o;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 306
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/o;->o:Ljava/lang/CharSequence;

    .line 310
    iput-object p4, p0, Landroid/support/v7/app/o;->p:Landroid/os/Message;

    .line 321
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/o;->r:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Landroid/support/v7/app/o;->s:Landroid/os/Message;

    goto :goto_0

    .line 319
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/o;->u:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Landroid/support/v7/app/o;->v:Landroid/os/Message;

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 353
    iput-object p1, p0, Landroid/support/v7/app/o;->y:Landroid/graphics/drawable/Drawable;

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/o;->x:I

    .line 356
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v7/app/o;->C:Landroid/view/View;

    .line 239
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Landroid/support/v7/app/o;->g:Landroid/view/View;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/o;->h:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/o;->m:Z

    .line 274
    iput p2, p0, Landroid/support/v7/app/o;->i:I

    .line 275
    iput p3, p0, Landroid/support/v7/app/o;->j:I

    .line 276
    iput p4, p0, Landroid/support/v7/app/o;->k:I

    .line 277
    iput p5, p0, Landroid/support/v7/app/o;->l:I

    .line 278
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/app/o;->d:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Landroid/support/v7/app/o;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/o;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/o;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Landroid/support/v7/app/o;->L:I

    .line 285
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Landroid/support/v7/app/o;->g:Landroid/view/View;

    .line 262
    iput v0, p0, Landroid/support/v7/app/o;->h:I

    .line 263
    iput-boolean v0, p0, Landroid/support/v7/app/o;->m:Z

    .line 264
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, Landroid/support/v7/app/o;->e:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/o;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/o;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/o;->y:Landroid/graphics/drawable/Drawable;

    .line 336
    iput p1, p0, Landroid/support/v7/app/o;->x:I

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/o;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/o;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 390
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/o;->n:Landroid/widget/Button;

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/o;->q:Landroid/widget/Button;

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/app/o;->t:Landroid/widget/Button;

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
