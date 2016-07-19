.class public final Landroid/support/v7/widget/aK;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10205
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/aY;)Landroid/support/v7/widget/aK;
    .locals 2

    .prologue
    .line 10215
    .line 11230
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 11231
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aK;->a:I

    .line 11232
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aK;->b:I

    .line 11233
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 11234
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 10215
    return-object p0
.end method
