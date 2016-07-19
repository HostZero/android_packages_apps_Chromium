.class public Lorg/chromium/content/browser/input/ImeUtils;
.super Ljava/lang/Object;
.source "ImeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCondition(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 152
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 153
    :cond_0
    return-void
.end method

.method static checkCondition(Z)V
    .locals 1

    .prologue
    .line 143
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method static checkOnUiThread()V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "Should be on UI thread."

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public static computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V
    .locals 5

    .prologue
    const v4, 0x8000

    const/16 v3, 0xf

    const/4 v2, 0x3

    .line 38
    const/high16 v0, 0x12000000

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 39
    const/16 v0, 0xa1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 42
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 43
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 48
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 49
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    .line 50
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v0, v4

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 90
    :cond_1
    :goto_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_d

    .line 91
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 98
    :cond_2
    :goto_1
    if-ne p0, v3, :cond_3

    .line 99
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 102
    :cond_3
    iput p2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 103
    iput p3, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 104
    return-void

    .line 52
    :cond_4
    const/16 v0, 0xe

    if-eq p0, v0, :cond_5

    if-ne p0, v3, :cond_7

    .line 54
    :cond_5
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 55
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_6

    .line 56
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v0, v4

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 58
    :cond_6
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 59
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 60
    const/16 v0, 0xe1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 62
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 63
    :cond_8
    if-ne p0, v2, :cond_9

    .line 64
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 65
    :cond_9
    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    .line 66
    const/16 v0, 0x11

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 67
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 68
    :cond_a
    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    .line 70
    const/16 v0, 0xd1

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 72
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 73
    :cond_b
    const/4 v0, 0x6

    if-ne p0, v0, :cond_c

    .line 77
    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 78
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 79
    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 81
    const/16 v0, 0x2002

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 83
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 92
    :cond_d
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_e

    .line 93
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    .line 94
    :cond_e
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_2

    .line 95
    iget v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1
.end method
