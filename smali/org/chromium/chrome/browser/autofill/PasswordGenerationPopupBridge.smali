.class public Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;
.super Ljava/lang/Object;
.source "PasswordGenerationPopupBridge.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mAnchorWidth:F

.field private final mContext:Landroid/content/Context;

.field private final mNativePasswordGenerationPopupViewAndroid:J

.field private final mPopup:Lorg/chromium/ui/DropdownPopupWindow;


# direct methods
.method public constructor <init>(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mNativePasswordGenerationPopupViewAndroid:J

    .line 52
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge$1;-><init>(Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mAnchorWidth:F

    .line 73
    return-void

    .line 65
    :cond_0
    new-instance v0, Lorg/chromium/ui/DropdownPopupWindow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p4}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/DropdownPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/DropdownPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->disableHideOnOutsideTap()V

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/ui/R$string;->password_generation_popup_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static create(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;-><init>(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    return-object v0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    .line 158
    :cond_0
    return-void
.end method

.method private native nativeDismissed(J)V
.end method

.method private native nativePasswordSelected(J)V
.end method

.method private native nativeSavedPasswordsLinkClicked(J)V
.end method

.method private setAnchorRect(FFFF)V
    .locals 1

    .prologue
    .line 110
    iput p3, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mAnchorWidth:F

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/ui/DropdownPopupWindow;->setAnchorRect(FFFF)V

    .line 112
    :cond_0
    return-void
.end method

.method private show(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mContext:Landroid/content/Context;

    iget v9, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mAnchorWidth:F

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PasswordGenerationAdapter$Delegate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)V

    .line 135
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v1, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/DropdownPopupWindow;->setRtl(Z)V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mPopup:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->show()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mNativePasswordGenerationPopupViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->nativeDismissed(J)V

    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mNativePasswordGenerationPopupViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->nativePasswordSelected(J)V

    .line 86
    return-void
.end method

.method public onSavedPasswordsLinkClicked()V
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->mNativePasswordGenerationPopupViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->nativeSavedPasswordsLinkClicked(J)V

    .line 147
    return-void
.end method
