.class Lorg/chromium/base/library_loader/LibraryLoader$1;
.super Landroid/os/AsyncTask;
.source "LibraryLoader.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;

.field final synthetic val$coldStart:Z


# direct methods
.method constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    iput-boolean p2, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 177
    const-string/jumbo v0, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 178
    # invokes: Lorg/chromium/base/library_loader/LibraryLoader;->nativePercentageOfResidentNativeLibraryCode()I
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$000()I

    move-result v2

    .line 180
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v0, :cond_4

    .line 181
    # invokes: Lorg/chromium/base/library_loader/LibraryLoader;->nativeForkAndPrefetchNativeLibrary()Z
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$100()Z

    move-result v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v3, "LibraryLoader"

    const-string/jumbo v4, "Forking a process to prefetch the native library failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->initialize()V

    .line 189
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v1, :cond_1

    .line 190
    const-string/jumbo v1, "LibraryLoader.PrefetchStatus"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 192
    :cond_1
    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "LibraryLoader.PercentageOfResidentCodeBeforePrefetch"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, ".ColdStartup"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    .line 197
    :cond_2
    const-string/jumbo v0, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_3
    const-string/jumbo v0, ".WarmStartup"

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
