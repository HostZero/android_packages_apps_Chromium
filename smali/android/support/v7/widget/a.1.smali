.class public final Landroid/support/v7/widget/a;
.super Landroid/support/v7/internal/view/menu/d;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/l;


# instance fields
.field final e:Landroid/support/v7/widget/b;

.field private f:Landroid/support/v7/widget/f;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private final n:Landroid/util/SparseBooleanArray;

.field private o:Landroid/view/View;

.field private p:Landroid/support/v7/widget/h;

.field private q:Landroid/support/v7/widget/c;

.field private r:Landroid/support/v7/widget/e;

.field private s:Landroid/support/v7/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f040004

    const v1, 0x7f040003

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/d;-><init>(Landroid/content/Context;II)V

    .line 73
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a;->n:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v0, Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/a;B)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->e:Landroid/support/v7/widget/b;

    .line 88
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/c;)Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/e;)Landroid/support/v7/widget/e;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/h;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->p:Landroid/support/v7/widget/h;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)Landroid/support/v7/widget/h;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Landroid/support/v7/widget/a;->p:Landroid/support/v7/widget/h;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/z;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/a;)Landroid/support/v7/internal/view/menu/z;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/widget/a;)Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v1

    move-object v0, v1

    .line 186
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/a;)V

    .line 187
    return-object v1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 200
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_2
    return-object v0

    .line 196
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/channel/e;

    move-result-object v0

    .line 97
    iget-boolean v2, p0, Landroid/support/v7/widget/a;->h:Z

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->b()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/a;->g:Z

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->c()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/a;->i:I

    .line 107
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/e;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a;->k:I

    .line 110
    iget v0, p0, Landroid/support/v7/widget/a;->i:I

    .line 111
    iget-boolean v2, p0, Landroid/support/v7/widget/a;->g:Z

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    if-nez v2, :cond_1

    .line 113
    new-instance v2, Landroid/support/v7/widget/f;

    iget-object v3, p0, Landroid/support/v7/widget/a;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    .line 119
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v3, v2, v2}, Landroid/support/v7/widget/f;->measure(II)V

    .line 122
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v2}, Landroid/support/v7/widget/f;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 127
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/a;->j:I

    .line 129
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/a;->m:I

    .line 132
    iput-object v5, p0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    .line 133
    return-void

    .line 124
    :cond_2
    iput-object v5, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/support/v7/widget/a;->f()Z

    .line 539
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    .line 540
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/m;Landroid/support/v7/internal/view/menu/A;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-interface {p2, p1, v1}, Landroid/support/v7/internal/view/menu/A;->a(Landroid/support/v7/internal/view/menu/m;I)V

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 211
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 212
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/k;)V

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/a;->s:Landroid/support/v7/widget/d;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/support/v7/widget/d;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/a;B)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->s:Landroid/support/v7/widget/d;

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->s:Landroid/support/v7/widget/d;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/c;)V

    .line 218
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 572
    iput-object p1, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/internal/view/menu/i;)V

    .line 574
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->a(Z)V

    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->l()Ljava/util/ArrayList;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 238
    :goto_0
    if-ge v3, v5, :cond_1

    .line 239
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->a()Landroid/support/v4/view/k;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p0}, Landroid/support/v4/view/k;->a(Landroid/support/v4/view/l;)V

    .line 238
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/a;->g:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 252
    if-ne v3, v1, :cond_8

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 259
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    if-nez v0, :cond_3

    .line 261
    new-instance v0, Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    .line 263
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    iget-object v1, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    if-eq v0, v1, :cond_5

    .line 265
    if-eqz v0, :cond_4

    .line 266
    iget-object v1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 269
    iget-object v1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/a;->g:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Z)V

    .line 276
    return-void

    .line 246
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 253
    goto :goto_2

    .line 255
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 271
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    if-ne v0, v1, :cond_5

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public final a(Landroid/support/v7/internal/view/menu/C;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/C;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 302
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 288
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/C;->p()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    if-eq v1, v2, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/C;->p()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/C;

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/C;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    .line 1306
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/ViewGroup;

    .line 1307
    if-eqz v0, :cond_3

    .line 1309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v3

    .line 1310
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1311
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1312
    instance-of v1, v2, Landroid/support/v7/internal/view/menu/A;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/support/v7/internal/view/menu/A;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/A;->a()Landroid/support/v7/internal/view/menu/m;

    move-result-object v1

    if-ne v1, v5, :cond_2

    move-object v0, v2

    .line 292
    :goto_3
    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    .line 1310
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1317
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 294
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    .line 297
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/C;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 298
    new-instance v1, Landroid/support/v7/widget/c;

    iget-object v2, p0, Landroid/support/v7/widget/a;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v7/widget/c;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/internal/view/menu/C;)V

    iput-object v1, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    .line 299
    iget-object v1, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/c;->a(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->a()V

    .line 301
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/C;)Z

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->h()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroid/support/v7/widget/a;->g:Z

    .line 153
    iput-boolean v0, p0, Landroid/support/v7/widget/a;->h:Z

    .line 154
    return-void
.end method

.method public final b()Z
    .locals 17

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->j()Ljava/util/ArrayList;

    move-result-object v10

    .line 404
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 405
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/a;->k:I

    .line 406
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/a;->j:I

    .line 407
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v1, Landroid/view/ViewGroup;

    .line 410
    const/4 v5, 0x0

    .line 411
    const/4 v4, 0x0

    .line 412
    const/4 v7, 0x0

    .line 413
    const/4 v3, 0x0

    .line 414
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v11, :cond_2

    .line 415
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/m;

    .line 416
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->j()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 417
    add-int/lit8 v5, v5, 0x1

    .line 423
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v7/widget/a;->l:Z

    if-eqz v13, :cond_17

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 426
    const/4 v2, 0x0

    .line 414
    :goto_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v2

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->i()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/a;->g:Z

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    add-int v2, v5, v4

    if-le v2, v6, :cond_4

    .line 433
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 435
    :cond_4
    sub-int v4, v6, v5

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/a;->n:Landroid/util/SparseBooleanArray;

    .line 438
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->clear()V

    .line 449
    const/4 v2, 0x0

    move v5, v8

    move v8, v2

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    :goto_3
    if-ge v8, v11, :cond_11

    .line 450
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/support/v7/internal/view/menu/m;

    .line 452
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->j()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 454
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    if-nez v6, :cond_5

    .line 455
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    .line 461
    :cond_5
    invoke-virtual {v2, v12, v12}, Landroid/view/View;->measure(II)V

    .line 463
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 464
    sub-int/2addr v5, v2

    .line 465
    if-nez v4, :cond_16

    .line 468
    :goto_4
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v4

    .line 469
    if-eqz v4, :cond_6

    .line 470
    const/4 v6, 0x1

    invoke-virtual {v13, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 472
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/m;->d(Z)V

    move v3, v5

    move v4, v7

    .line 449
    :goto_5
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v7, v4

    move v5, v3

    move v4, v2

    goto :goto_3

    .line 473
    :cond_7
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->i()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 476
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v14

    .line 477
    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 478
    if-gtz v7, :cond_8

    if-eqz v15, :cond_b

    :cond_8
    if-lez v5, :cond_b

    const/4 v6, 0x1

    .line 481
    :goto_6
    if-eqz v6, :cond_15

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 483
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    if-nez v9, :cond_9

    .line 484
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/a;->o:Landroid/view/View;

    .line 494
    :cond_9
    invoke-virtual {v2, v12, v12}, Landroid/view/View;->measure(II)V

    .line 496
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 497
    sub-int v9, v5, v2

    .line 498
    if-nez v4, :cond_14

    move v5, v2

    .line 506
    :goto_7
    add-int v2, v9, v5

    if-lez v2, :cond_c

    const/4 v2, 0x1

    :goto_8
    and-int/2addr v2, v6

    move v6, v9

    move v9, v2

    .line 510
    :goto_9
    if-eqz v9, :cond_d

    if-eqz v14, :cond_d

    .line 511
    const/4 v2, 0x1

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v7

    .line 525
    :goto_a
    if-eqz v9, :cond_a

    add-int/lit8 v2, v2, -0x1

    .line 527
    :cond_a
    invoke-virtual {v3, v9}, Landroid/support/v7/internal/view/menu/m;->d(Z)V

    move v3, v6

    move v4, v2

    move v2, v5

    .line 528
    goto :goto_5

    .line 478
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 506
    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 512
    :cond_d
    if-eqz v15, :cond_13

    .line 514
    const/4 v2, 0x0

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 515
    const/4 v2, 0x0

    move v4, v7

    move v7, v2

    :goto_b
    if-ge v7, v8, :cond_12

    .line 516
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/m;

    .line 517
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v15

    if-ne v15, v14, :cond_f

    .line 519
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->h()Z

    move-result v15

    if-eqz v15, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 520
    :cond_e
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/support/v7/internal/view/menu/m;->d(Z)V

    .line 515
    :cond_f
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_b

    .line 530
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/view/menu/m;->d(Z)V

    move v2, v4

    move v3, v5

    move v4, v7

    goto/16 :goto_5

    .line 533
    :cond_11
    const/4 v1, 0x1

    return v1

    :cond_12
    move v2, v4

    goto :goto_a

    :cond_13
    move v2, v7

    goto :goto_a

    :cond_14
    move v5, v4

    goto :goto_7

    :cond_15
    move v9, v6

    move v6, v5

    move v5, v4

    goto :goto_9

    :cond_16
    move v2, v4

    goto/16 :goto_4

    :cond_17
    move v2, v6

    goto/16 :goto_2
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a;->k:I

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Landroid/support/v7/widget/a;->l:Z

    .line 163
    return-void
.end method

.method public final d()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 325
    iget-boolean v0, p0, Landroid/support/v7/widget/a;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/support/v7/widget/h;

    iget-object v2, p0, Landroid/support/v7/widget/a;->b:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/support/v7/internal/view/menu/i;

    iget-object v4, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/h;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;Z)V

    .line 328
    new-instance v1, Landroid/support/v7/widget/e;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/a;Landroid/support/v7/widget/h;)V

    iput-object v1, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 334
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/C;)Z

    .line 338
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    move v0, v1

    .line 358
    :goto_0
    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->p:Landroid/support/v7/widget/h;

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/v;->e()V

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/support/v7/widget/a;->e()Z

    move-result v0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/a;->g()Z

    move-result v1

    or-int/2addr v0, v1

    .line 368
    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/a;->q:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->e()V

    .line 379
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/a;->p:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a;->p:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/a;->r:Landroid/support/v7/widget/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
