.class final Landroid/support/v7/widget/au;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/aj;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/aj;B)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/aj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v1}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/am;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    iget v1, v1, Landroid/support/v7/widget/aj;->b:I

    if-gt v0, v1, :cond_0

    .line 1795
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->b(Landroid/support/v7/widget/aj;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1796
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()V

    .line 1798
    :cond_0
    return-void
.end method
