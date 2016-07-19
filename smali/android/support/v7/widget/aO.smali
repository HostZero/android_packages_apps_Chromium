.class public final Landroid/support/v7/widget/aO;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# instance fields
.field a:Landroid/support/v7/widget/aY;

.field final b:Landroid/graphics/Rect;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 8693
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->c:Z

    .line 8686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->d:Z

    .line 8694
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 8689
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->c:Z

    .line 8686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->d:Z

    .line 8690
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/aO;)V
    .locals 1

    .prologue
    .line 8705
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->c:Z

    .line 8686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->d:Z

    .line 8706
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 8701
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->c:Z

    .line 8686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->d:Z

    .line 8702
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 8697
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aO;->b:Landroid/graphics/Rect;

    .line 8682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->c:Z

    .line 8686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aO;->d:Z

    .line 8698
    return-void
.end method
