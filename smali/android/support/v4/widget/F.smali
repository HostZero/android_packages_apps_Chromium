.class final Landroid/support/v4/widget/F;
.super Landroid/support/v4/view/a/t;
.source "ExploreByTouchHelper.java"


# instance fields
.field private synthetic a:Landroid/support/v4/widget/E;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/E;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Landroid/support/v4/widget/F;->a:Landroid/support/v4/widget/E;

    invoke-direct {p0}, Landroid/support/v4/view/a/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/E;B)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/support/v4/widget/F;-><init>(Landroid/support/v4/widget/E;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/view/a/h;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/F;->a:Landroid/support/v4/widget/E;

    # invokes: Landroid/support/v4/widget/E;->createNode(I)Landroid/support/v4/view/a/h;
    invoke-static {v0, p1}, Landroid/support/v4/widget/E;->access$100(Landroid/support/v4/widget/E;I)Landroid/support/v4/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v4/widget/F;->a:Landroid/support/v4/widget/E;

    # invokes: Landroid/support/v4/widget/E;->performAction(IILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/E;->access$200(Landroid/support/v4/widget/E;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
