.class final Landroid/support/v7/app/v;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# instance fields
.field private synthetic a:Landroid/widget/ListView;

.field private synthetic b:Landroid/support/v7/app/u;


# direct methods
.method constructor <init>(Landroid/support/v7/app/u;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 883
    iput-object p1, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/u;

    iput-object p6, p0, Landroid/support/v7/app/v;->a:Landroid/widget/ListView;

    const v0, 0x1020014

    invoke-direct {p0, p2, p3, v0, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 886
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 887
    iget-object v1, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/u;

    iget-object v1, v1, Landroid/support/v7/app/u;->B:[Z

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/u;

    iget-object v1, v1, Landroid/support/v7/app/u;->B:[Z

    aget-boolean v1, v1, p1

    .line 889
    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Landroid/support/v7/app/v;->a:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 893
    :cond_0
    return-object v0
.end method
