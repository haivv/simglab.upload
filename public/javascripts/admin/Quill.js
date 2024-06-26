document.addEventListener('DOMContentLoaded', (event) => {
  var toolbarOptions = [
    ['bold', 'italic', 'underline'],
    [{ 'align': [] }],
    [{ 'size': ['12px', '16px', '20px', '24px', '28px'] }],
    [{ 'list': 'ordered' }, { 'list': 'bullet' }],
    [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
    [{ 'color': [] }],
    [{ 'font': [] }],
    ['image', 'video', 'link'],
  ];

  var quill = new Quill('#editor', {
    theme: 'snow',
    placeholder: 'Type your content...',
    modules: {
      toolbar: toolbarOptions,
      syntax: true  // Enable syntax highlighting module
    }
  });

  var isCodeView = false;
  var originalContent = '';

  // Toggle button event listener
  document.getElementById('toggle-button').addEventListener('click', function() {
    if (isCodeView) {
      // Switch to display mode
      quill.setContents(JSON.parse(originalContent));
      this.textContent = 'Code/View';
    } else {
      // Switch to code view
      originalContent = JSON.stringify(quill.getContents());
      quill.clipboard.dangerouslyPasteHTML('<pre class="ql-syntax"><code>' + escapeHtml(originalContent) + '</code></pre>');
      this.textContent = 'Show Rendered';
    }
    isCodeView = !isCodeView;
  });

  // Function to escape HTML
  function escapeHtml(html) {
    var text = document.createTextNode(html);
    var p = document.createElement('p');
    p.appendChild(text);
    return p.innerHTML;
  }

  // Count characters
  function updateCharCount() {
    let contentText = quill.getText();
    let charCount = contentText.length - 1; // Exclude the last newline character
    document.getElementById('charCount').innerText = charCount;
  }

  // Listen to text-change event from Quill editor
  quill.on('text-change', function () {
    updateCharCount();
  });

  // Initial call
  updateCharCount();
});