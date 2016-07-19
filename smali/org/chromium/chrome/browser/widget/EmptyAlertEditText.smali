.class public Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;
.super Landroid/support/v7/widget/w;
.source "EmptyAlertEditText.java"


# instance fields
.field private mAlertMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v0, Lorg/chromium/chrome/R$styleable;->EmptyAlertEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    sget v1, Lorg/chromium/chrome/R$styleable;->EmptyAlertEditText_alertMessage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 31
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->mAlertMessage:Ljava/lang/String;

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method


# virtual methods
.method public getTrimmedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getTrimmedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/widget/w;->onFinishInflate()V

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText$1;-><init>(Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    return-void
.end method

.method public validate()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->mAlertMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setError(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
