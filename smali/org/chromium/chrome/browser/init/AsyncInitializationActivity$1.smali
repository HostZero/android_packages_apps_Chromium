.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

.field final synthetic val$firstDrawView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;->val$firstDrawView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;->val$firstDrawView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onFirstDrawComplete()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method
