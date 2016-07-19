.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;
.super Ljava/lang/Object;
.source "AccessibilityTabModelAdapter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPendingClosure(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->cancelTabClosure(I)V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public hasPendingClosure(I)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabList;->isClosurePending(I)Z

    move-result v0

    return v0
.end method

.method public schedulePendingClosure(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public tabChanged(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public tabClosed(I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isClosurePending(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitTabClosure(I)V

    .line 60
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 61
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z

    goto :goto_0
.end method

.method public tabSelected(I)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;->showTab(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method
