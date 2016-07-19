.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;
.super Ljava/lang/Object;
.source "AutofillDialogControllerAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sDialogFactory:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;


# instance fields
.field private mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

.field private mNativeDelegate:J


# direct methods
.method private constructor <init>(JLorg/chromium/ui/base/WindowAndroid;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    .line 125
    sget-object v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->sDialogFactory:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;

    if-nez v4, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogCancel(J)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;)V

    .line 148
    sget-object v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->sDialogFactory:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-interface/range {v4 .. v18}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;->createDialog(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogDelegate;Lorg/chromium/ui/base/WindowAndroid;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    if-nez v4, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogCancel(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogCancel(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->nativeDialogContinue(JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static create(JLorg/chromium/ui/base/WindowAndroid;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;
    .locals 18

    .prologue
    .line 178
    new-instance v1, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;

    move-wide/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;-><init>(JLorg/chromium/ui/base/WindowAndroid;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static isDialogAllowed(Z)Z
    .locals 0

    .prologue
    .line 194
    return p0
.end method

.method private native nativeDialogCancel(J)V
.end method

.method private native nativeDialogContinue(JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onDestroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;->onDestroy()V

    .line 203
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialog;

    .line 204
    iput-wide v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->mNativeDelegate:J

    goto :goto_0
.end method

.method public static setDialogFactory(Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid;->sDialogFactory:Lorg/chromium/chrome/browser/autofill/AutofillDialogControllerAndroid$AutofillDialogFactory;

    .line 108
    return-void
.end method
