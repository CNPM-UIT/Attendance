using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Class
{
    public class TestQuestion
    {
        private ObservableCollection<TestAnswer> answers;
        private TestAnswer correctAnswer;
        private String text;

        public TestQuestion(ObservableCollection<TestAnswer> answers, TestAnswer correctAnswer, string text)
        {
            this.answers = answers;
            this.correctAnswer = correctAnswer;
            this.text = text;
        }

        public TestQuestion(int numberOfAnswer = 4)
        {
            this.answers = new ObservableCollection<TestAnswer>();
            this.text = "";
            this.correctAnswer = null;
            for (int i = 0; i < 4; i++)
            {
                answers.Add(new TestAnswer());
            }

        }

        public string Text
        {
            get => text;
            set => text = value;
        }

        public TestAnswer CorrectAnswer
        {
            get => correctAnswer;
            set => correctAnswer = value;
        }

        public ObservableCollection<TestAnswer> Answers
        {
            get => answers;
            set => answers = value;
        }
    }

    public class TestAnswer
    {
        private String text;

        public TestAnswer(string text)
        {
            this.Text = text;
        }

        public TestAnswer()
        {
            this.Text = "";
        }
        public string Text
        {
            get => text;
            set => text = value;
        }
    }
}
