.class public final Landroid/support/v7/internal/widget/O;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/widget/v;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Landroid/support/v7/widget/a;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/L;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f0b00fe

    const v1, 0x7f020016

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/O;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Landroid/support/v7/internal/widget/O;->o:I

    .line 89
    iput v1, p0, Landroid/support/v7/internal/widget/O;->q:I

    .line 99
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->i:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->j:Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/O;->h:Z

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->g:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_11

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/a/a;->a:[I

    const v4, 0x7f010074

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v0

    .line 109
    sget v2, Landroid/support/v7/a/a;->r:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/O;->b(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    sget v2, Landroid/support/v7/a/a;->p:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1297
    iput-object v2, p0, Landroid/support/v7/internal/widget/O;->j:Ljava/lang/CharSequence;

    .line 1298
    iget v3, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 1299
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    sget v2, Landroid/support/v7/a/a;->n:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 1341
    iput-object v2, p0, Landroid/support/v7/internal/widget/O;->f:Landroid/graphics/drawable/Drawable;

    .line 1342
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->r()V

    .line 124
    :cond_2
    sget v2, Landroid/support/v7/a/a;->m:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 2330
    iput-object v2, p0, Landroid/support/v7/internal/widget/O;->e:Landroid/graphics/drawable/Drawable;

    .line 2331
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->r()V

    .line 129
    :cond_3
    sget v2, Landroid/support/v7/a/a;->l:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/O;->a(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_4
    sget v2, Landroid/support/v7/a/a;->h:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/O;->a(I)V

    .line 136
    sget v2, Landroid/support/v7/a/a;->g:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2566
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    .line 2567
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2569
    :cond_5
    iput-object v2, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    .line 2570
    if-eqz v2, :cond_6

    iget v2, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 2571
    iget-object v2, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 141
    :cond_6
    iget v2, p0, Landroid/support/v7/internal/widget/O;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/O;->a(I)V

    .line 144
    :cond_7
    sget v2, Landroid/support/v7/a/a;->j:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->f(II)I

    move-result v2

    .line 145
    if-lez v2, :cond_8

    .line 146
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 147
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v2, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_8
    sget v2, Landroid/support/v7/a/a;->f:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/N;->d(II)I

    move-result v2

    .line 153
    sget v3, Landroid/support/v7/a/a;->e:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/widget/N;->d(II)I

    move-result v3

    .line 155
    if-gez v2, :cond_9

    if-ltz v3, :cond_a

    .line 156
    :cond_9
    iget-object v4, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 160
    :cond_a
    sget v2, Landroid/support/v7/a/a;->s:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v2

    .line 161
    if-eqz v2, :cond_b

    .line 162
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_b
    sget v2, Landroid/support/v7/a/a;->q:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v2

    .line 167
    if-eqz v2, :cond_c

    .line 168
    iget-object v3, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 171
    :cond_c
    sget v2, Landroid/support/v7/a/a;->o:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v1

    .line 172
    if-eqz v1, :cond_d

    .line 173
    iget-object v2, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 176
    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->a()V

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->b()Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->p:Landroid/support/v7/internal/widget/L;

    .line 4213
    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/O;->q:I

    if-eq p3, v0, :cond_e

    .line 4216
    iput p3, p0, Landroid/support/v7/internal/widget/O;->q:I

    .line 4217
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4218
    iget v0, p0, Landroid/support/v7/internal/widget/O;->q:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/O;->b(I)V

    .line 186
    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->k:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->p:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/L;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4224
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->r:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_f

    .line 4225
    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->r:Landroid/graphics/drawable/Drawable;

    .line 4226
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->t()V

    .line 190
    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/P;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/P;-><init>(Landroid/support/v7/internal/widget/O;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    :cond_10
    move v0, v1

    .line 102
    goto/16 :goto_0

    .line 3231
    :cond_11
    const/16 v0, 0xb

    .line 3233
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3234
    const/16 v0, 0xf

    .line 180
    :cond_12
    iput v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    .line 182
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->p:Landroid/support/v7/internal/widget/L;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/O;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/O;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/O;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->i:Ljava/lang/CharSequence;

    .line 285
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/O;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/O;->m:Z

    return v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    iget v1, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 348
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->f:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/O;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 653
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :cond_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a(IJ)Landroid/support/v4/view/aP;
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/Q;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/Q;-><init>(Landroid/support/v7/internal/widget/O;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    .line 410
    xor-int/2addr v0, p1

    .line 411
    iput p1, p0, Landroid/support/v7/internal/widget/O;->b:I

    .line 412
    if-eqz v0, :cond_3

    .line 413
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 414
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 415
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->t()V

    .line 416
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->s()V

    .line 422
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 423
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->r()V

    .line 426
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 427
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 428
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/O;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/O;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 436
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 437
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 438
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 444
    :cond_3
    :goto_2
    return-void

    .line 418
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 431
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 440
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->g:Landroid/graphics/drawable/Drawable;

    .line 620
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->t()V

    .line 621
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 692
    return-void
.end method

.method public final a(Landroid/support/v7/internal/widget/C;)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 451
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->c:Landroid/view/View;

    .line 460
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->n:Landroid/support/v7/widget/a;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->n:Landroid/support/v7/widget/a;

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->n:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/O;->n:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/widget/a;)V

    .line 395
    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->l:Landroid/view/Window$Callback;

    .line 262
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/O;->h:Z

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/O;->c(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 475
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 638
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 4632
    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/widget/O;->k:Ljava/lang/CharSequence;

    .line 4633
    invoke-direct {p0}, Landroid/support/v7/internal/widget/O;->s()V

    .line 639
    return-void

    .line 4246
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 638
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/O;->h:Z

    .line 280
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/O;->c(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 681
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 257
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 305
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/O;->m:Z

    .line 385
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 400
    return-void
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Landroid/support/v7/internal/widget/O;->b:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public final q()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
