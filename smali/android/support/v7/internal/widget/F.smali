.class final Landroid/support/v7/internal/widget/F;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/C;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/C;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Landroid/support/v7/internal/widget/F;->a:Landroid/support/v7/internal/widget/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/C;B)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/F;-><init>(Landroid/support/v7/internal/widget/C;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/F;->a:Landroid/support/v7/internal/widget/C;

    invoke-static {v0}, Landroid/support/v7/internal/widget/C;->a(Landroid/support/v7/internal/widget/C;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 579
    :goto_0
    if-ge v2, v3, :cond_1

    .line 580
    iget-object v0, p0, Landroid/support/v7/internal/widget/F;->a:Landroid/support/v7/internal/widget/C;

    invoke-static {v0}, Landroid/support/v7/internal/widget/C;->a(Landroid/support/v7/internal/widget/C;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 581
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 579
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 581
    goto :goto_1

    .line 583
    :cond_1
    return-void
.end method
