.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;
.super Ljava/lang/Object;
.source "AccessibilityTabModelWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mIncognito:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;Z)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->mIncognito:Z

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->mIncognito:Z

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->commitAllTabClosures()V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->mIncognito:Z

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    .line 67
    :cond_0
    return-void
.end method
