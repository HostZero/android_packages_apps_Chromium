.class Lorg/chromium/content/browser/input/SelectPopupDropdown$2;
.super Ljava/lang/Object;
.source "SelectPopupDropdown.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->access$000(Lorg/chromium/content/browser/input/SelectPopupDropdown;[I)V

    .line 65
    return-void
.end method
