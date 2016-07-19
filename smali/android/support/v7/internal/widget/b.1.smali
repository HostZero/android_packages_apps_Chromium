.class public final Landroid/support/v7/internal/widget/b;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/bc;


# instance fields
.field private a:Z

.field private b:I

.field private synthetic c:Landroid/support/v7/internal/widget/a;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/a;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/aP;I)Landroid/support/v7/internal/widget/b;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iput-object p1, v0, Landroid/support/v7/internal/widget/a;->e:Landroid/support/v4/view/aP;

    .line 284
    iput p2, p0, Landroid/support/v7/internal/widget/b;->b:I

    .line 285
    return-object p0
.end method

.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->a:Z

    .line 305
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/b;->a:Z

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/widget/a;->e:Landroid/support/v4/view/aP;

    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iget v1, p0, Landroid/support/v7/internal/widget/b;->b:I

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/a;->b(Landroid/support/v7/internal/widget/a;I)V

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/a;->a(Landroid/support/v7/internal/widget/a;I)V

    .line 291
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/b;->a:Z

    .line 292
    return-void
.end method
