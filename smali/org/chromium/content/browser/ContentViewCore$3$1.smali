.class Lorg/chromium/content/browser/ContentViewCore$3$1;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$3;

.field final synthetic val$zoomer:Lorg/chromium/content/browser/PopupZoomer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$3;Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    # getter for: Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$3;->access$1300(Lorg/chromium/content/browser/ContentViewCore$3;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$3;

    # getter for: Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$3;->access$1300(Lorg/chromium/content/browser/ContentViewCore$3;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$3$1;->val$zoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 905
    :cond_0
    return-void
.end method
