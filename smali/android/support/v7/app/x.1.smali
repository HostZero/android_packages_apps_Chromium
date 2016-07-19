.class final Landroid/support/v7/app/x;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/o;

.field private synthetic b:Landroid/support/v7/app/u;


# direct methods
.method constructor <init>(Landroid/support/v7/app/u;Landroid/support/v7/app/o;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/u;

    iput-object p2, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/u;

    iget-object v0, v0, Landroid/support/v7/app/u;->t:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/app/o;

    invoke-static {v1}, Landroid/support/v7/app/o;->g(Landroid/support/v7/app/o;)Landroid/support/v7/app/ab;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 957
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/u;

    iget-boolean v0, v0, Landroid/support/v7/app/u;->D:Z

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/app/o;

    invoke-static {v0}, Landroid/support/v7/app/o;->g(Landroid/support/v7/app/o;)Landroid/support/v7/app/ab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ab;->dismiss()V

    .line 960
    :cond_0
    return-void
.end method
