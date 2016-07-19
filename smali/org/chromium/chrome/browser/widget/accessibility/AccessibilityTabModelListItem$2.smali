.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AccessibilityTabModelListItem.java"


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->mIsCancelled:Z

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$102(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)Z

    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->schedulePendingClosure(I)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTranslationX(F)V

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleX(F)V

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setScaleY(F)V

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runResetAnimation(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$500(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)V

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$800(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$600(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseTimeoutMs:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$700(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$2;->mIsCancelled:Z

    .line 139
    return-void
.end method
