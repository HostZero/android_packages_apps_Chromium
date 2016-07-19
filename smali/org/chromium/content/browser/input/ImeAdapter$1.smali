.class Lorg/chromium/content/browser/input/ImeAdapter$1;
.super Ljava/lang/Object;
.source "ImeAdapter.java"

# interfaces
.implements Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComposingTextEnd()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    # getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v0

    return v0
.end method

.method public getComposingTextStart()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    # getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$300(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v0

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    # getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$200(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    # getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$100(Lorg/chromium/content/browser/input/ImeAdapter;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    # getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
