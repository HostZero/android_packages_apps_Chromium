.class Lorg/chromium/ui/picker/InputDialogContainer$1;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/picker/InputDialogContainer;

.field final synthetic val$adapter:Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;

.field final synthetic val$dialogType:I

.field final synthetic val$dialogValue:D

.field final synthetic val$max:D

.field final synthetic val$min:D

.field final synthetic val$step:D


# direct methods
.method constructor <init>(Lorg/chromium/ui/picker/InputDialogContainer;Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;IDDDD)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    iput-object p2, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;

    iput p3, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$dialogType:I

    iput-wide p4, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$dialogValue:D

    iput-wide p6, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$min:D

    iput-wide p8, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$max:D

    iput-wide p10, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$step:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/InputDialogContainer;->dismissDialog()V

    .line 134
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    iget v1, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$dialogType:I

    iget-wide v2, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$dialogValue:D

    iget-wide v4, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$min:D

    iget-wide v6, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$max:D

    iget-wide v8, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$step:D

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/ui/picker/InputDialogContainer;->showPickerDialog(IDDDD)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;

    invoke-virtual {v0, p3}, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/picker/DateTimeSuggestion;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/DateTimeSuggestion;->value()D

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    # getter for: Lorg/chromium/ui/picker/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;
    invoke-static {v2}, Lorg/chromium/ui/picker/InputDialogContainer;->access$000(Lorg/chromium/ui/picker/InputDialogContainer;)Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;->replaceDateTime(D)V

    .line 138
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/InputDialogContainer;->dismissDialog()V

    .line 139
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$1;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/ui/picker/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0, v1}, Lorg/chromium/ui/picker/InputDialogContainer;->access$102(Lorg/chromium/ui/picker/InputDialogContainer;Z)Z

    goto :goto_0
.end method
