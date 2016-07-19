.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;
.super Landroid/util/Property;
.source "ToolbarPhone.java"


# instance fields
.field private mRtlStateInvalid:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

.field final synthetic val$containerView:Landroid/view/View;

.field final synthetic val$isContainerRtl:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1552
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iput-object p4, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->val$containerView:Landroid/view/View;

    iput-boolean p5, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->val$isContainerRtl:Z

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1557
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1552
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->get(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1562
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->mRtlStateInvalid:Z

    if-eqz v0, :cond_0

    .line 1575
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->val$containerView:Landroid/view/View;

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 1564
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->val$isContainerRtl:Z

    if-eq v0, v1, :cond_2

    .line 1565
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->mRtlStateInvalid:Z

    .line 1566
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1567
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1568
    if-eqz v0, :cond_2

    .line 1569
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1570
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1574
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScrollX(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1552
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$8;->set(Landroid/widget/TextView;Ljava/lang/Integer;)V

    return-void
.end method
