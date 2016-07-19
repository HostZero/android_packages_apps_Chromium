.class Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "BrowserAccessibilityManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field final synthetic val$delegate:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;->this$0:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;->val$delegate:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;->val$delegate:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;->val$delegate:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;->val$delegate:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
