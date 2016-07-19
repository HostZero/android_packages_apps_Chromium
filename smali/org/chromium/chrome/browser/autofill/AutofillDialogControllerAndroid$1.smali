.class Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;
.super Ljava/lang/Object;
.source "AutofillDialogControllerAndroid.java"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogCancel()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    # getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogCancel(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;J)V

    .line 134
    return-void
.end method

.method public dialogContinue(Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 142
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    # getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;)J

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    # invokes: Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogContinue(JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
