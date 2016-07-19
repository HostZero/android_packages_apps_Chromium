.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;
.super Landroid/util/Property;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 242
    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F
    invoke-static {p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;->get(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;->set(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mTabSwitcherModePercent:F
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$202(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;F)F

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->triggerPaintInvalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V

    .line 249
    return-void
.end method
