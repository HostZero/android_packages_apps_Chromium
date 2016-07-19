.class Lorg/chromium/content/browser/input/SelectPopupDropdown$1;
.super Ljava/lang/Object;
.source "SelectPopupDropdown.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    # invokes: Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->access$000(Lorg/chromium/content/browser/input/SelectPopupDropdown;[I)V

    .line 42
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->hide()V

    .line 43
    return-void
.end method
