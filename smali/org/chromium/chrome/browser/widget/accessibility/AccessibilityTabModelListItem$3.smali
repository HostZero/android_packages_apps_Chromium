.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AccessibilityTabModelListItem.java"


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->mIsCancelled:Z

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$102(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)Z

    .line 178
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 182
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->showUndoView(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Z)V

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTabContents:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$900(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mUndoContents:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->cancelRunningAnimation()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->tabClosed(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$3;->mIsCancelled:Z

    .line 172
    return-void
.end method
