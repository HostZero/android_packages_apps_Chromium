.class Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;
.super Ljava/lang/Object;
.source "AccountSigninView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;Lorg/chromium/chrome/browser/signin/AccountSigninView$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;-><init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAddAnotherAccount:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$000(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$200(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 103
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$300(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$400(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;->onNewAccount()V

    .line 107
    const-string/jumbo v0, "Signin_AddAccountToDevice"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # setter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$102(Lorg/chromium/chrome/browser/signin/AccountSigninView;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositionSetProgrammatically:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$500(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mImageCarousel:Lorg/chromium/chrome/browser/firstrun/ImageCarousel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$600(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    move-result-object v0

    int-to-float v2, p3

    invoke-virtual {v0, v2, v1, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->scrollTo(FZZ)V

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # setter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mPositionSetProgrammatically:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$502(Lorg/chromium/chrome/browser/signin/AccountSigninView;Z)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$SpinnerOnItemSelectedListener;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$102(Lorg/chromium/chrome/browser/signin/AccountSigninView;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    return-void
.end method
