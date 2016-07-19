.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "AccessibilityTabModelWrapper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
