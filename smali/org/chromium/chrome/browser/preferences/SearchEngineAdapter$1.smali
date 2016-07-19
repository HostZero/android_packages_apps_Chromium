.class Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SearchEngineAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;Z)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;->this$0:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;->val$selected:Z

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 191
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;->val$selected:Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 192
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 198
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;->val$selected:Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 199
    return-void
.end method
